# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sentry-rails` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

class ActiveJob::Base
  include(::ActiveJob::Core)
  include(::ActiveJob::QueueAdapter)
  include(::ActiveJob::QueueName)
  include(::ActiveJob::QueuePriority)
  include(::ActiveJob::Enqueuing)
  include(::ActiveSupport::Rescuable)
  include(::ActiveJob::Execution)
  include(::ActiveSupport::Callbacks)
  include(::ActiveJob::Callbacks)
  include(::ActiveJob::Exceptions)
  include(::ActiveJob::Logging)
  include(::ActiveJob::Timezones)
  include(::ActiveJob::Translation)
  include(::Sentry::Rails::ActiveJobExtensions)
  include(::ActiveJob::TestHelper::TestQueueAdapter)
  extend(::ActiveJob::Core::ClassMethods)
  extend(::ActiveJob::QueueAdapter::ClassMethods)
  extend(::ActiveJob::QueueName::ClassMethods)
  extend(::ActiveJob::QueuePriority::ClassMethods)
  extend(::ActiveJob::Enqueuing::ClassMethods)
  extend(::ActiveSupport::Rescuable::ClassMethods)
  extend(::ActiveJob::Execution::ClassMethods)
  extend(::ActiveSupport::Callbacks::ClassMethods)
  extend(::ActiveSupport::DescendantsTracker)
  extend(::ActiveJob::Callbacks::ClassMethods)
  extend(::ActiveJob::Exceptions::ClassMethods)
  extend(::ActiveJob::TestHelper::TestQueueAdapter::ClassMethods)

  def __callbacks; end
  def __callbacks?; end
  def _enqueue_callbacks; end
  def _perform_callbacks; end
  def _run_enqueue_callbacks(&block); end
  def _run_perform_callbacks(&block); end
  def logger; end
  def logger=(obj); end
  def rescue_handlers; end
  def rescue_handlers=(val); end
  def rescue_handlers?; end

  class << self
    def __callbacks; end
    def __callbacks=(val); end
    def __callbacks?; end
    def _enqueue_callbacks; end
    def _enqueue_callbacks=(value); end
    def _perform_callbacks; end
    def _perform_callbacks=(value); end
    def _queue_adapter; end
    def _queue_adapter=(val); end
    def _queue_adapter_name; end
    def _queue_adapter_name=(val); end
    def _test_adapter; end
    def _test_adapter=(val); end
    def logger; end
    def logger=(obj); end
    def priority; end
    def priority=(val); end
    def priority?; end
    def queue_name; end
    def queue_name=(val); end
    def queue_name?; end
    def queue_name_delimiter; end
    def queue_name_delimiter=(val); end
    def queue_name_delimiter?; end
    def rescue_handlers; end
    def rescue_handlers=(val); end
    def rescue_handlers?; end
    def return_false_on_aborted_enqueue; end
    def return_false_on_aborted_enqueue=(val); end
  end
end

module Sentry
  class << self
    def breadcrumbs; end
    def capture_event(event); end
    def capture_exception(exception, **options, &block); end
    def capture_message(message, **options, &block); end
    def clone_hub_to_current_thread; end
    def configuration; end
    def configure_scope(&block); end
    def get_current_client; end
    def get_current_hub; end
    def get_current_scope; end
    def get_main_hub; end
    def init(&block); end
    def last_event_id; end
    def logger; end
    def sdk_meta; end
    def send_event(event); end
    def start_transaction(**options); end
    def sys_command(command); end
    def utc_now; end
    def with_scope(&block); end
  end
end

class Sentry::Configuration
  def initialize; end

  def app_dirs_pattern; end
  def app_dirs_pattern=(_arg0); end
  def async; end
  def async=(value); end
  def async?; end
  def backtrace_cleanup_callback; end
  def backtrace_cleanup_callback=(_arg0); end
  def before_send; end
  def before_send=(value); end
  def breadcrumbs_logger; end
  def breadcrumbs_logger=(logger); end
  def capture_allowed?(message_or_exc = T.unsafe(nil)); end
  def context_lines; end
  def context_lines=(_arg0); end
  def current_environment; end
  def current_environment=(environment); end
  def dsn; end
  def dsn=(value); end
  def enabled_in_current_env?; end
  def environments; end
  def environments=(_arg0); end
  def error_messages; end
  def errors; end
  def exception_class_allowed?(exc); end
  def exclude_loggers; end
  def exclude_loggers=(_arg0); end
  def excluded_exceptions; end
  def excluded_exceptions=(_arg0); end
  def gem_specs; end
  def inspect_exception_causes_for_exclusion; end
  def inspect_exception_causes_for_exclusion=(_arg0); end
  def inspect_exception_causes_for_exclusion?; end
  def linecache; end
  def linecache=(_arg0); end
  def logger; end
  def logger=(_arg0); end
  def post_initialization_callback; end
  def project_root; end
  def project_root=(root_dir); end
  def rack_env_whitelist; end
  def rack_env_whitelist=(_arg0); end
  def rails; end
  def release; end
  def release=(_arg0); end
  def sample_rate; end
  def sample_rate=(_arg0); end
  def send_default_pii; end
  def send_default_pii=(_arg0); end
  def send_modules; end
  def send_modules=(_arg0); end
  def sending_allowed?(message_or_exc = T.unsafe(nil)); end
  def server=(value); end
  def server_name; end
  def server_name=(_arg0); end
  def should_capture; end
  def should_capture=(value); end
  def traces_sample_rate; end
  def traces_sample_rate=(_arg0); end
  def traces_sampler; end
  def traces_sampler=(_arg0); end
  def tracing_enabled?; end
  def transport; end

  private

  def capture_allowed_by_callback?(message_or_exc); end
  def capture_in_current_environment?; end
  def current_environment_from_env; end
  def detect_project_root; end
  def detect_release; end
  def detect_release_from_capistrano; end
  def detect_release_from_env; end
  def detect_release_from_git; end
  def detect_release_from_heroku; end
  def excluded_exception?(incoming_exception); end
  def excluded_exception_classes; end
  def get_exception_class(x); end
  def matches_exception?(excluded_exception_class, incoming_exception); end
  def resolve_hostname; end
  def running_on_heroku?; end
  def safe_const_get(x); end
  def sample_allowed?; end
  def server_name_from_env; end
  def valid?; end
end

Sentry::Configuration::AVAILABLE_BREADCRUMBS_LOGGERS = T.let(T.unsafe(nil), Array)

Sentry::Configuration::HEROKU_DYNO_METADATA_MESSAGE = T.let(T.unsafe(nil), String)

Sentry::Configuration::IGNORE_DEFAULT = T.let(T.unsafe(nil), Array)

Sentry::Configuration::LOG_PREFIX = T.let(T.unsafe(nil), String)

Sentry::Configuration::MODULE_SEPARATOR = T.let(T.unsafe(nil), String)

Sentry::Configuration::RACK_ENV_WHITELIST_DEFAULT = T.let(T.unsafe(nil), Array)

Sentry::LOGGER_PROGNAME = T.let(T.unsafe(nil), String)

Sentry::META = T.let(T.unsafe(nil), Hash)

module Sentry::Rails
end

module Sentry::Rails::ActiveJobExtensions
  def already_supported_by_specific_integration?(job); end
  def capture_and_reraise_with_sentry(job, block); end
  def sentry_context(job); end

  class << self
    def included(base); end
  end
end

Sentry::Rails::ActiveJobExtensions::ALREADY_SUPPORTED_SENTRY_ADAPTERS = T.let(T.unsafe(nil), Array)

class Sentry::Rails::BacktraceCleaner < ::ActiveSupport::BacktraceCleaner
  def initialize; end
end

Sentry::Rails::BacktraceCleaner::APP_DIRS_PATTERN = T.let(T.unsafe(nil), Regexp)

Sentry::Rails::BacktraceCleaner::RENDER_TEMPLATE_PATTERN = T.let(T.unsafe(nil), Regexp)

class Sentry::Rails::CaptureException < ::Sentry::Rack::CaptureException
  def collect_exception(env); end
end

class Sentry::Rails::Configuration
  def initialize; end

  def report_rescued_exceptions; end
  def report_rescued_exceptions=(_arg0); end
end

module Sentry::Rails::ControllerMethods
  def capture_exception(exception, options = T.unsafe(nil)); end
  def capture_message(message, options = T.unsafe(nil)); end

  private

  def with_request_scope; end
end

module Sentry::Rails::ControllerTransaction
  class << self
    def included(base); end
  end
end

Sentry::Rails::IGNORE_DEFAULT = T.let(T.unsafe(nil), Array)

Sentry::Rails::META = T.let(T.unsafe(nil), Hash)

module Sentry::Rails::Overrides
end

module Sentry::Rails::Overrides::OldStreamingReporter
  def log_error_with_raven(exception); end

  class << self
    def included(base); end
  end
end

module Sentry::Rails::Overrides::StreamingReporter
  def log_error(exception); end
end

module Sentry::Rails::Tracing
  class << self
    def get_current_transaction; end
    def patch_active_support_notifications; end
    def remove_active_support_notifications_patch; end
    def subscribe_tracing_events; end
    def unsubscribe_tracing_events; end
  end
end

Sentry::Rails::Tracing::AVAILABLE_SUBSCRIBERS = T.let(T.unsafe(nil), Array)

class Sentry::Rails::Tracing::AbstractSubscriber
  class << self
    def record_on_current_span(duration:, **options); end
    def subscribe!; end
    def subscribe_to_event(event_name); end
    def unsubscribe!; end
  end
end

class Sentry::Rails::Tracing::ActionControllerSubscriber < ::Sentry::Rails::Tracing::AbstractSubscriber
  class << self
    def subscribe!; end
  end
end

Sentry::Rails::Tracing::ActionControllerSubscriber::EVENT_NAME = T.let(T.unsafe(nil), String)

class Sentry::Rails::Tracing::ActionViewSubscriber < ::Sentry::Rails::Tracing::AbstractSubscriber
  class << self
    def subscribe!; end
    def unsubscribe!; end
  end
end

Sentry::Rails::Tracing::ActionViewSubscriber::EVENT_NAMES = T.let(T.unsafe(nil), Array)

class Sentry::Rails::Tracing::ActiveRecordSubscriber < ::Sentry::Rails::Tracing::AbstractSubscriber
  class << self
    def subscribe!; end
  end
end

Sentry::Rails::Tracing::ActiveRecordSubscriber::EVENT_NAME = T.let(T.unsafe(nil), String)

Sentry::Rails::Tracing::ActiveRecordSubscriber::EXCLUDED_EVENTS = T.let(T.unsafe(nil), Array)

module Sentry::Rails::Tracing::SentryNotificationExtension
end

Sentry::Rails::VERSION = T.let(T.unsafe(nil), String)

class Sentry::Railtie < ::Rails::Railtie
end

Sentry::THREAD_LOCAL = T.let(T.unsafe(nil), Symbol)

Sentry::VERSION = T.let(T.unsafe(nil), String)
