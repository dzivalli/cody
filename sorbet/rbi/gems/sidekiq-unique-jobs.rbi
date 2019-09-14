# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/sidekiq-unique-jobs/all/sidekiq-unique-jobs.rbi
#
# sidekiq-unique-jobs-5.0.10
module SidekiqUniqueJobs
  def config; end
  def configure(options = nil); end
  def connection(redis_pool = nil); end
  def default_lock; end
  def logger; end
  def mocked?; end
  def namespace; end
  def redis_version; end
  def self.config; end
  def self.configure(options = nil); end
  def self.connection(redis_pool = nil); end
  def self.default_lock; end
  def self.logger; end
  def self.mocked?; end
  def self.namespace; end
  def self.redis_version; end
  def self.synchronize(item, redis_pool); end
  def self.worker_class_constantize(worker_class); end
  def synchronize(item, redis_pool); end
  def worker_class_constantize(worker_class); end
  extend SidekiqUniqueJobs::Middleware
end
module SidekiqUniqueJobs::Util
  def batch_delete(keys); end
  def connection(&block); end
  def del(pattern = nil, count = nil, dry_run = nil); end
  def dry_run(keys, pattern = nil); end
  def expire; end
  def get_jobs(conn, cursor); end
  def keys(pattern = nil, count = nil); end
  def keys_by_keys(pattern, _count); end
  def keys_by_scan(pattern, count); end
  def logger; end
  def prefix(key); end
  def prefix_keys(keys); end
  def redis_keys_method; end
  def redis_version; end
  def timed(&_block); end
  def unique_hash; end
  def unique_key(jid); end
  def unique_prefix; end
  extend SidekiqUniqueJobs::Util
end
class SidekiqUniqueJobs::Cli < Thor
  def self.banner(command, _namespace = nil, _subcommand = nil); end
end
class Array
end
class String
end
class SidekiqUniqueJobs::TimeoutCalculator
  def initialize(item); end
  def item; end
  def seconds; end
  def self.for_item(item); end
  def time_until_scheduled; end
  def worker_class; end
  def worker_class_expiration_for(key); end
  def worker_class_queue_lock_expiration; end
  def worker_class_run_lock_expiration; end
end
class SidekiqUniqueJobs::RunLockTimeoutCalculator < SidekiqUniqueJobs::TimeoutCalculator
  def seconds; end
end
class SidekiqUniqueJobs::QueueLockTimeoutCalculator < SidekiqUniqueJobs::TimeoutCalculator
  def queue_lock_expiration; end
  def seconds; end
end
module SidekiqUniqueJobs::OptionsWithFallback
  def lock; end
  def lock_cache; end
  def lock_cache=(obj); end
  def lock_class; end
  def lock_type; end
  def lock_type_from(hash, key = nil); end
  def log_duplicate_payload?; end
  def options; end
  def self.included(base); end
  def unique_disabled?; end
  def unique_enabled?; end
  def unique_lock; end
end
module SidekiqUniqueJobs::OptionsWithFallback::ClassMethods
  def lock_cache; end
  def lock_cache=(obj); end
end
module SidekiqUniqueJobs::Scripts
  def call(file_name, redis_pool, options = nil); end
  def handle_error(ex, file_name, redis_pool, options = nil); end
  def internal_call(file_name, redis_pool, options = nil); end
  def script_path(file_name); end
  def script_source(file_name); end
  def self.call(file_name, redis_pool, options = nil); end
  def self.connection(*args, &block); end
  def self.handle_error(ex, file_name, redis_pool, options = nil); end
  def self.internal_call(file_name, redis_pool, options = nil); end
  def self.logger(*args, &block); end
  def self.script_path(file_name); end
  def self.script_source(file_name); end
  extend SingleForwardable
end
class SidekiqUniqueJobs::Scripts::AcquireLock
  def execute; end
  def handle_result(result); end
  def initialize(_redis_pool, unique_key, jid, max_lock_time); end
  def jid; end
  def logger(*args, &block); end
  def max_lock_time; end
  def redis_pool; end
  def self.execute(redis_pool, unique_key, jid, max_lock_time); end
  def unique_key; end
  extend Forwardable
end
class SidekiqUniqueJobs::Scripts::ReleaseLock
  def execute; end
  def handle_result(result); end
  def initialize(redis_pool, unique_key, jid); end
  def jid; end
  def logger(*args, &block); end
  def redis_pool; end
  def self.execute(redis_pool, unique_key, jid); end
  def unique_key; end
  extend Forwardable
end
class SidekiqUniqueJobs::ScriptError < StandardError
end
class SidekiqUniqueJobs::UniqueKeyMissing < ArgumentError
end
class SidekiqUniqueJobs::JidMissing < ArgumentError
end
class SidekiqUniqueJobs::MaxLockTimeMissing < ArgumentError
end
class SidekiqUniqueJobs::UnexpectedValue < StandardError
end
module SidekiqUniqueJobs::Normalizer
  def self.jsonify(args); end
end
class SidekiqUniqueJobs::UniqueArgs
  def config(*args, &block); end
  def digestable_hash; end
  def filter_by_proc(args); end
  def filter_by_symbol(args); end
  def filtered_args(args); end
  def initialize(item); end
  def logger(*args, &block); end
  def self.digest(item); end
  def sidekiq_worker_class?; end
  def unique_across_workers?; end
  def unique_args(args); end
  def unique_args_enabled?; end
  def unique_args_method; end
  def unique_digest; end
  def unique_on_all_queues?; end
  def unique_prefix; end
  def worker_class_constantize(*args, &block); end
  extend Forwardable
end
module SidekiqUniqueJobs::Unlockable
  def after_unlock(jid); end
  def ensure_job_id_removed(jid); end
  def logger; end
  def self.after_unlock(jid); end
  def self.ensure_job_id_removed(jid); end
  def self.logger; end
  def self.unlock(item); end
  def self.unlock_by_key(unique_key, jid, redis_pool = nil); end
  def unlock(item); end
  def unlock_by_key(unique_key, jid, redis_pool = nil); end
end
module SidekiqUniqueJobs::Lock
end
class SidekiqUniqueJobs::Lock::UntilExecuted
  def after_yield_yield; end
  def execute(callback, &blk); end
  def initialize(item, redis_pool = nil); end
  def item; end
  def lock(scope); end
  def logger(*args, &block); end
  def max_lock_time; end
  def redis_pool; end
  def unique_key; end
  def unlock(scope); end
  extend Forwardable
  include SidekiqUniqueJobs::Unlockable
end
class SidekiqUniqueJobs::Lock::UntilExecuting < SidekiqUniqueJobs::Lock::UntilExecuted
  def execute(callback, &_block); end
end
class SidekiqUniqueJobs::Lock::WhileExecuting
  def create_digest; end
  def execute(_callback); end
  def initialize(item, redis_pool = nil); end
  def locked?; end
  def max_lock_time; end
  def self.synchronize(item, redis_pool = nil); end
  def synchronize; end
end
class SidekiqUniqueJobs::Lock::UntilTimeout < SidekiqUniqueJobs::Lock::UntilExecuted
  def execute(_callback); end
  def unlock(scope); end
end
class SidekiqUniqueJobs::Lock::UntilAndWhileExecuting < SidekiqUniqueJobs::Lock::UntilExecuting
  def execute(callback); end
end
module SidekiqUniqueJobs::Server
end
class SidekiqUniqueJobs::Server::Middleware
  def after_unlock_hook; end
  def call(worker, item, queue, redis_pool = nil, &blk); end
  def item; end
  def logger(*args, &block); end
  def redis_pool; end
  def reschedule; end
  def worker; end
  def worker_class(*args, &block); end
  extend Forwardable
  extend SidekiqUniqueJobs::OptionsWithFallback::ClassMethods
  include SidekiqUniqueJobs::OptionsWithFallback
end
module SidekiqUniqueJobs::Client
end
class SidekiqUniqueJobs::Client::Middleware
  def acquire_lock; end
  def call(worker_class, item, queue, redis_pool = nil); end
  def config(*args, &block); end
  def connection(*args, &block); end
  def disabled_or_successfully_locked?; end
  def item; end
  def logger(*args, &block); end
  def queue; end
  def redis_pool; end
  def warn_about_duplicate(item); end
  def worker_class; end
  def worker_class_constantize(*args, &block); end
  extend Forwardable
  extend SidekiqUniqueJobs::OptionsWithFallback::ClassMethods
  include SidekiqUniqueJobs::OptionsWithFallback
end
module SidekiqUniqueJobs::Middleware
  def configure_client_middleware; end
  def configure_middleware; end
  def configure_server_middleware; end
  def self.extended(base); end
end
class SidekiqUniqueJobs::Config < OpenStruct
  def inline_testing_enabled?; end
  def mocking?; end
  def testing_enabled?; end
end
module Sidekiq
end
class Sidekiq::SortedEntry < Sidekiq::Job
  def delete_orig; end
  def remove_job_orig; end
  include Sidekiq::SortedEntry::UniqueExtension
  include SidekiqUniqueJobs::Unlockable
end
module Sidekiq::SortedEntry::UniqueExtension
  def delete_ext; end
  def remove_job_ext; end
  def self.included(base); end
end
class Sidekiq::ScheduledSet < Sidekiq::JobSet
  def delete; end
  def delete_orig(score, jid); end
  include Sidekiq::ScheduledSet::UniqueExtension
  include SidekiqUniqueJobs::Unlockable
end
module Sidekiq::ScheduledSet::UniqueExtension
  def delete_ext; end
  def remove_job_ext; end
  def self.included(base); end
end
class Sidekiq::Job
  def delete_orig; end
  include Sidekiq::Job::UniqueExtension
  include SidekiqUniqueJobs::Unlockable
end
module Sidekiq::Job::UniqueExtension
  def delete_ext; end
  def self.included(base); end
end
class Sidekiq::Queue
  def clear_orig; end
  include Sidekiq::Queue::UniqueExtension
  include SidekiqUniqueJobs::Unlockable
end
module Sidekiq::Queue::UniqueExtension
  def clear_ext; end
  def self.included(base); end
end
class Sidekiq::JobSet < Sidekiq::SortedSet
  def clear; end
  def clear_orig; end
  def delete_by_value_orig(name, value); end
  include Sidekiq::JobSet::UniqueExtension
  include SidekiqUniqueJobs::Unlockable
end
module Sidekiq::JobSet::UniqueExtension
  def clear_ext; end
  def delete_by_value_ext(name, value); end
  def self.included(base); end
end
