# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `SummaryMailer`.
# Please instead update this file by running `tapioca dsl`.

# typed: strict
class SummaryMailer
  sig { params(user: T.untyped).returns(::ActionMailer::MessageDelivery) }
  def self.new_reviews(user); end

  sig { params(user: T.untyped).returns(::ActionMailer::MessageDelivery) }
  def self.pending_reviews_summary(user); end
end