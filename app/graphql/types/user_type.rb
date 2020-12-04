# typed: false
# frozen_string_literal: true

class Types::UserType < Types::BaseObject
  implements GraphQL::Types::Relay::Node

  global_id_field :id

  field :login, String, null: false,
                        description: "The user's login"
  field :email, String, null: true,
                        description: "The user's email"
  field :name, String, null: false,
                       description: "The user's name"
  field :send_new_reviews_summary, Boolean, null: false,
                                            description: "Opt-in choice for daily code review summary email"

  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

  def send_new_reviews_summary
    !!@object.send_new_reviews_summary?
  end

  field :paused, Boolean, null: false,
                          description: "Opt-in choice to temporarily pause assignment of new reviews"

  def paused
    !!@object.paused?
  end

  field :timezone, String, null: false,
                           description: "The user's configured timezone"

  def timezone
    @object.timezone.tzinfo.name
  end

  field :repositories, Types::RepositoryType.connection_type, null: true,
                                                              connection: true

  def repositories
    Pundit.policy_scope(@object, Repository)
  end

  field :repository, Types::RepositoryType, null: true do
    description "Find a given repository by the owner and name"
    argument :owner, String, required: true
    argument :name, String, required: true
  end

  def repository(**args)
    Pundit.policy_scope(@object, Repository)
      .find_by(owner: args[:owner], name: args[:name])
  end

  field :assigned_reviews, Types::ReviewerType.connection_type, null: true,
                                                                connection: true do
    description "Find the user's assigned reviews"
    argument :status, Types::ReviewerStatusType, required: false,
                                                 description: "Filter by status"
    argument :reviewRule, String, required: false, description: "Filter by Review Rule name"
    argument :repository, String, required: false, description: "Filter by Repository full name"
  end
end
