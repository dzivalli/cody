# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActionMailbox::BaseController`.
# Please instead update this file by running `tapioca dsl`.

# typed: strict
module ActionMailbox
  class BaseController
    sig { returns(ActionMailbox::BaseController::HelperProxy) }
    def helpers; end
  end
end

module ActionMailbox::BaseController::HelperMethods
  include ActionText::ContentHelper
  include ActionText::TagHelper
  include Webpacker::Helper
end

class ActionMailbox::BaseController::HelperProxy < ::ActionView::Base
  include ActionMailbox::BaseController::HelperMethods
end