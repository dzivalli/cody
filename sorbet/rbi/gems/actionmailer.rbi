# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/actionmailer/all/actionmailer.rbi
#
# actionmailer-6.0.0
module ActionMailer
  def self.eager_load!; end
  def self.gem_version; end
  def self.version; end
  extend ActiveSupport::Autoload
end
module ActionMailer::VERSION
end
class ActionMailer::Railtie < Rails::Railtie
end
module ActionMailer::Previews
  extend ActiveSupport::Concern
end
module ActionMailer::Previews::ClassMethods
  def interceptor_class_for(interceptor); end
  def register_preview_interceptor(interceptor); end
  def register_preview_interceptors(*interceptors); end
  def unregister_preview_interceptor(interceptor); end
  def unregister_preview_interceptors(*interceptors); end
end
class ActionMailer::Preview
  def initialize(params = nil); end
  def params; end
  def self.all; end
  def self.call(email, params = nil); end
  def self.email_exists?(email); end
  def self.emails; end
  def self.exists?(preview); end
  def self.find(preview); end
  def self.inform_preview_interceptors(message); end
  def self.load_previews; end
  def self.preview_name; end
  def self.preview_path; end
  def self.show_previews; end
  extend ActiveSupport::DescendantsTracker
end
