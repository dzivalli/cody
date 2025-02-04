# frozen_string_literal: true

class WebhooksController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :verify_webhook_signature, only: [:integration]

  def pull_request
    if %w[opened synchronize closed].include?(params[:webhook][:action])
      ReceivePullRequestEvent.perform_async(params[:webhook].permit!.to_h)
    end

    head :accepted
  end

  def issue_comment
    if params[:webhook][:zen]
      head :ok
      return
    end

    ReceiveIssueCommentEvent.perform_async(params[:webhook].permit!.to_h)
    head :accepted
  end

  # The entry point for webhooks from the GitHub app
  def integration
    if params[:webhook][:zen]
      head :ok
      return
    end

    event = request.headers["X-GitHub-Event"]
    case event
    when "push"
      ref = params[:webhook][:ref]
      unless ref == "refs/heads/master"
        head :ok
        return
      end

      ReceivePushEvent.perform_async(
        params[:webhook][:repository][:full_name],
        params[:webhook].dig("installation", "id")
      )
    when "pull_request"
      if %w[opened synchronize closed].include?(params[:webhook][:action])
        ReceivePullRequestEvent.perform_async(params[:webhook].permit!.to_h)
      end
    when "pull_request_review"
      ReceivePullRequestReviewEvent.perform_async(
        ReceivePullRequestReviewEvent.permit(params).to_h
      )
    when "issue_comment"
      ReceiveIssueCommentEvent.perform_async(params[:webhook].permit!.to_h)
    when "installation"
      ReceiveInstallationRepositoriesEvent.perform_async(
        params[:webhook].permit!.to_h[:repositories],
        params[:webhook].dig("installation", "id")
      )
    when "installation_repositories"
      ReceiveInstallationRepositoriesEvent
        .perform_async(
          params[:webhook].permit!.to_h[:repositories_added],
          params[:webhook].dig("installation", "id")
        )
    end

    head :accepted
  end

  private

  def verify_webhook_signature
    request.body.rewind
    payload_body = request.body.read

    valid_signature =
      VerifyWebhookSignature.call(
        signature: request.env["HTTP_X_HUB_SIGNATURE_256"],
        body: payload_body
      )

    unless valid_signature
      head :unauthorized
    end
  end
end
