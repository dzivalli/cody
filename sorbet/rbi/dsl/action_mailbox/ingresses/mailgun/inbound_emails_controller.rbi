# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActionMailbox::Ingresses::Mailgun::InboundEmailsController`.
# Please instead update this file by running `tapioca dsl`.

# typed: strict
module ActionMailbox
  module Ingresses
    module Mailgun
      class InboundEmailsController
        sig { returns(ActionMailbox::Ingresses::Mailgun::InboundEmailsController::HelperProxy) }
        def helpers; end
      end
    end
  end
end

module ActionMailbox::Ingresses::Mailgun::InboundEmailsController::HelperMethods
  include ActionText::ContentHelper
  include ActionText::TagHelper
  include Webpacker::Helper
end

class ActionMailbox::Ingresses::Mailgun::InboundEmailsController::HelperProxy < ::ActionView::Base
  include ActionMailbox::Ingresses::Mailgun::InboundEmailsController::HelperMethods
end