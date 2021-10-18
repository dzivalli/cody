# frozen_string_literal: true

class ReceivePullRequestEvent
  include Sidekiq::Worker
  include GithubApi

  def perform(payload)
    Sentry.configure_scope do |scope|
      scope.set_user(username: payload["sender"]["login"])
      scope.set_tags(
        event: "pull_request",
        repo: payload["repository"]["full_name"]
      )

      do_perform(payload)
    end
  end

  def do_perform(payload)
    Current.reset

    @payload = payload

    if (installation_id = @payload.dig("installation", "id"))
      Current.installation_id = installation_id
    end

    # check for ignored labels
    @repository =
      Repository.find_by_full_name(@payload["repository"]["full_name"])

    # Process "closed" action before checking for ignores
    PaperTrail.request(whodunnit: @payload["sender"]["login"]) do
      case @payload["action"]
      when "closed"
        on_closed
        Current.reset
        return
      end
    end

    labels = @payload["pull_request"]["labels"].map { |label| label["name"] }
    if @payload["pull_request"]["draft"] || @repository.ignore?(labels)
      github_client.create_status(
        @payload["repository"]["full_name"],
        @payload["pull_request"]["head"]["sha"],
        "pending",
        {
          context: "code-review/cody",
          description: PullRequest::STATUS_SKIPPED
        }
      )

      Current.reset
      return
    end

    PaperTrail.request(whodunnit: @payload["sender"]["login"]) do
      case @payload["action"]
      when "opened"
        on_opened
      when "synchronize"
        on_synchronize
      when "closed"
        on_closed
      when "review_requested"
        on_review_requested
      when "review_request_removed"
        on_review_request_removed
      when "unlabeled"
        # Stop responding to unlabeled as we transition to the Draft status
        # on_unlabeled
      end
    end

    Current.reset
  end

  def on_opened
    CreateOrUpdatePullRequest.new.perform(@payload["pull_request"])
  end

  def on_closed
    number = @payload["number"]
    if (pr = @repository.pull_requests.find_by(number: number))
      if pr.status == "pending_review"
        pr.status = PullRequest::STATUS_CLOSED
        pr.save!
        pr.update_status("Pull Request closed")
      end
    end
  end

  # The "synchronize" event occurs whenever a new commit is pushed to the branch
  # or the branch is rebased.
  #
  # In this case, we preserve the current review status and update the new
  # commit with the correct status indicator.
  def on_synchronize
    CreateOrUpdatePullRequest.new.perform(@payload["pull_request"])
  end

  # This function is called whenever a review is requested.
  #
  # We take a new review request to be equivalent to adding a new peer reviewer.
  # We use `find_or_create_by!` to avoid creating duplicate peer reviewer
  # records.
  def on_review_requested
    number = @payload["number"]
    if (pr = @repository.pull_requests.find_by(number: number))
      pr.reviewers.pending_review.find_or_create_by!(review_rule_id: nil, login: @payload["requested_reviewer"]["login"])

      if pr.reviewers.pending_review.empty?
        pr.status = PullRequest::STATUS_APPROVED
        pr.save!
        pr.update_status
      end

      pr.assign_reviewers
    end
  end

  # This function is called whenever a review request is removed.
  #
  # We take this event to mean that a peer reviewer is being removed, so we
  # search for all peer reviewer records with the given login and destroy them.
  def on_review_request_removed
    number = @payload["number"]
    if (pr = @repository.pull_requests.find_by(number: number))
      pr.reviewers.pending_review.where(review_rule_id: nil, login: @payload["requested_reviewer"]["login"]).destroy_all

      if pr.reviewers.pending_review.empty?
        pr.status = PullRequest::STATUS_APPROVED
        pr.save!
        pr.update_status
      end

      pr.assign_reviewers
    end
  end

  # This function is called whenever a label is removed.
  #
  # If the repository no longer ignores the PR, and the PR is not recorded yet,
  # then we record the PR into the DB. Otherwise, if the PR already exists in
  # the DB, then this function does nothing. Only acting on never before seen
  # PRs should help reduce the amount of activity from this function.
  #
  # If the PR previously existed, that should mean that the PR was created
  # without any ignore labels on it, and an ignore label was added later. That
  # should mean that the PR already has reviewers assigned, and we don't want
  # the unlabel action to change reviewers.
  def on_unlabeled
    labels = @payload["pull_request"]["labels"].map { |label| label["name"] }
    number = @payload["number"]
    if !@payload["pull_request"]["draft"] && !@repository.ignore?(labels) &&
        !@repository.pull_requests.exists?(number: number)

      CreateOrUpdatePullRequest.new.perform(@payload["pull_request"])
    end
  end
end
