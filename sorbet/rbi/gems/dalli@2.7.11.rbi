# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dalli` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

module Dalli
  class << self
    def default_logger; end
    def logger; end
    def logger=(logger); end
    def rails_logger; end
  end
end

class Dalli::Client
  def initialize(servers = T.unsafe(nil), options = T.unsafe(nil)); end

  def add(key, value, ttl = T.unsafe(nil), options = T.unsafe(nil)); end
  def alive!; end
  def append(key, value); end
  def cas(key, ttl = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def cas!(key, ttl = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def close; end
  def decr(key, amt = T.unsafe(nil), ttl = T.unsafe(nil), default = T.unsafe(nil)); end
  def delete(key); end
  def fetch(key, ttl = T.unsafe(nil), options = T.unsafe(nil)); end
  def flush(delay = T.unsafe(nil)); end
  def flush_all(delay = T.unsafe(nil)); end
  def get(key, options = T.unsafe(nil)); end
  def get_multi(*keys); end
  def incr(key, amt = T.unsafe(nil), ttl = T.unsafe(nil), default = T.unsafe(nil)); end
  def multi; end
  def prepend(key, value); end
  def replace(key, value, ttl = T.unsafe(nil), options = T.unsafe(nil)); end
  def reset; end
  def reset_stats; end
  def set(key, value, ttl = T.unsafe(nil), options = T.unsafe(nil)); end
  def stats(type = T.unsafe(nil)); end
  def touch(key, ttl = T.unsafe(nil)); end
  def version; end
  def with; end

  private

  def cas_core(key, always_set, ttl = T.unsafe(nil), options = T.unsafe(nil)); end
  def get_multi_yielder(keys); end
  def groups_for_keys(*keys); end
  def key_with_namespace(key); end
  def key_without_namespace(key); end
  def make_multi_get_requests(groups); end
  def mapped_keys(keys); end
  def namespace; end
  def normalize_options(opts); end
  def normalize_servers(servers); end
  def perform(*all_args); end
  def perform_multi_response_start(servers); end
  def ring; end
  def ttl_or_default(ttl); end
  def validate_key(key); end
end

Dalli::Client::CACHE_NILS = T.let(T.unsafe(nil), Hash)

class Dalli::Compressor
  class << self
    def compress(data); end
    def decompress(data); end
  end
end

class Dalli::DalliError < ::RuntimeError
end

class Dalli::GzipCompressor
  class << self
    def compress(data); end
    def decompress(data); end
  end
end

class Dalli::MarshalError < ::Dalli::DalliError
end

class Dalli::NetworkError < ::Dalli::DalliError
end

class Dalli::Railtie < ::Rails::Railtie
end

class Dalli::Ring
  def initialize(servers, options); end

  def continuum; end
  def continuum=(_arg0); end
  def lock; end
  def server_for_key(key); end
  def servers; end
  def servers=(_arg0); end

  private

  def binary_search(ary, value); end
  def entry_count_for(server, total_servers, total_weight); end
  def hash_for(key); end
  def threadsafe!; end
end

class Dalli::Ring::Entry
  def initialize(val, srv); end

  def server; end
  def value; end
end

Dalli::Ring::POINTS_PER_SERVER = T.let(T.unsafe(nil), Integer)

class Dalli::RingError < ::Dalli::DalliError
end

class Dalli::Server
  def initialize(attribs, options = T.unsafe(nil)); end

  def alive?; end
  def close; end
  def compressor; end
  def hostname; end
  def hostname=(_arg0); end
  def lock!; end
  def multi_response_abort; end
  def multi_response_completed?; end
  def multi_response_nonblock; end
  def multi_response_start; end
  def name; end
  def options; end
  def options=(_arg0); end
  def port; end
  def port=(_arg0); end
  def request(op, *args); end
  def serializer; end
  def sock; end
  def socket_type; end
  def unlock!; end
  def weight; end
  def weight=(_arg0); end

  private

  def add(key, value, ttl, options); end
  def append(key, value); end
  def cas(key); end
  def cas_response; end
  def connect; end
  def data_cas_response; end
  def decr(key, count, ttl, default); end
  def decr_incr(opcode, key, count, ttl, default); end
  def delete(key, cas); end
  def deserialize(value, flags); end
  def down!; end
  def failure!(exception); end
  def flush(ttl); end
  def generic_response(unpack = T.unsafe(nil), cache_nils = T.unsafe(nil)); end
  def get(key, options = T.unsafe(nil)); end
  def guard_max_value(key, value); end
  def incr(key, count, ttl, default); end
  def keyvalue_response; end
  def multi?; end
  def multi_response; end
  def need_auth?; end
  def noop; end
  def parse_hostname(str); end
  def password; end
  def prepend(key, value); end
  def read(count); end
  def read_header; end
  def reconnect!(message); end
  def replace(key, value, ttl, cas, options); end
  def reset_stats; end
  def sanitize_ttl(ttl); end
  def sasl_authentication; end
  def send_multiget(keys); end
  def serialize(key, value, options = T.unsafe(nil)); end
  def set(key, value, ttl, cas, options); end
  def split(n); end
  def stats(info = T.unsafe(nil)); end
  def touch(key, ttl); end
  def up!; end
  def username; end
  def verify_state; end
  def version; end
  def write(bytes); end
  def write_append_prepend(opcode, key, value); end
  def write_generic(bytes); end
  def write_noop; end
end

Dalli::Server::CAS_HEADER = T.let(T.unsafe(nil), String)

Dalli::Server::DEFAULTS = T.let(T.unsafe(nil), Hash)

Dalli::Server::DEFAULT_PORT = T.let(T.unsafe(nil), Integer)

Dalli::Server::DEFAULT_WEIGHT = T.let(T.unsafe(nil), Integer)

Dalli::Server::FLAG_COMPRESSED = T.let(T.unsafe(nil), Integer)

Dalli::Server::FLAG_SERIALIZED = T.let(T.unsafe(nil), Integer)

Dalli::Server::FORMAT = T.let(T.unsafe(nil), Hash)

Dalli::Server::HEADER = T.let(T.unsafe(nil), String)

module Dalli::Server::KSocket
  include(::Dalli::Server::KSocket::InstanceMethods)

  class << self
    def included(receiver); end
  end
end

module Dalli::Server::KSocket::InstanceMethods
  def read_available; end
  def readfull(count); end
end

class Dalli::Server::KSocket::TCP < ::TCPSocket
  include(::Dalli::Server::KSocket)
  include(::Dalli::Server::KSocket::InstanceMethods)
  extend(::Dalli::Server::TCPSocketOptions)

  def options; end
  def options=(_arg0); end
  def server; end
  def server=(_arg0); end

  class << self
    def open(host, port, server, options = T.unsafe(nil)); end
  end
end

class Dalli::Server::KSocket::UNIX < ::UNIXSocket
  include(::Dalli::Server::KSocket)
  include(::Dalli::Server::KSocket::InstanceMethods)

  def options; end
  def options=(_arg0); end
  def server; end
  def server=(_arg0); end

  class << self
    def open(path, server, options = T.unsafe(nil)); end
  end
end

Dalli::Server::KV_HEADER = T.let(T.unsafe(nil), String)

Dalli::Server::MAX_ACCEPTABLE_EXPIRATION_INTERVAL = T.let(T.unsafe(nil), Integer)

Dalli::Server::NORMAL_HEADER = T.let(T.unsafe(nil), String)

Dalli::Server::NOT_FOUND = T.let(T.unsafe(nil), Dalli::Server::NilObject)

class Dalli::Server::NilObject
end

Dalli::Server::OPCODES = T.let(T.unsafe(nil), Hash)

Dalli::Server::OP_FORMAT = T.let(T.unsafe(nil), Hash)

Dalli::Server::REQUEST = T.let(T.unsafe(nil), Integer)

Dalli::Server::RESPONSE = T.let(T.unsafe(nil), Integer)

Dalli::Server::RESPONSE_CODES = T.let(T.unsafe(nil), Hash)

module Dalli::Server::TCPSocketOptions
  def setsockopts(sock, options); end
end

module Dalli::Threadsafe
  def alive?; end
  def close; end
  def init_threadsafe; end
  def lock!; end
  def multi_response_abort; end
  def multi_response_nonblock; end
  def multi_response_start; end
  def request(op, *args); end
  def unlock!; end

  class << self
    def extended(obj); end
  end
end

class Dalli::UnmarshalError < ::Dalli::DalliError
end

Dalli::VERSION = T.let(T.unsafe(nil), String)

class Dalli::ValueOverMaxSize < ::Dalli::DalliError
end

module Rack
  class << self
    def release; end
    def version; end
  end
end

Rack::CACHE_CONTROL = T.let(T.unsafe(nil), String)

Rack::CONTENT_LENGTH = T.let(T.unsafe(nil), String)

Rack::CONTENT_TYPE = T.let(T.unsafe(nil), String)

Rack::DELETE = T.let(T.unsafe(nil), String)

Rack::ETAG = T.let(T.unsafe(nil), String)

Rack::EXPIRES = T.let(T.unsafe(nil), String)

Rack::File = Rack::Files

Rack::GET = T.let(T.unsafe(nil), String)

Rack::HEAD = T.let(T.unsafe(nil), String)

Rack::HTTPS = T.let(T.unsafe(nil), String)

Rack::HTTP_COOKIE = T.let(T.unsafe(nil), String)

Rack::HTTP_HOST = T.let(T.unsafe(nil), String)

Rack::HTTP_PORT = T.let(T.unsafe(nil), String)

Rack::HTTP_VERSION = T.let(T.unsafe(nil), String)

Rack::LINK = T.let(T.unsafe(nil), String)

Rack::OPTIONS = T.let(T.unsafe(nil), String)

Rack::PATCH = T.let(T.unsafe(nil), String)

Rack::PATH_INFO = T.let(T.unsafe(nil), String)

Rack::POST = T.let(T.unsafe(nil), String)

Rack::PUT = T.let(T.unsafe(nil), String)

Rack::QUERY_STRING = T.let(T.unsafe(nil), String)

Rack::RACK_ERRORS = T.let(T.unsafe(nil), String)

Rack::RACK_HIJACK = T.let(T.unsafe(nil), String)

Rack::RACK_HIJACK_IO = T.let(T.unsafe(nil), String)

Rack::RACK_INPUT = T.let(T.unsafe(nil), String)

Rack::RACK_IS_HIJACK = T.let(T.unsafe(nil), String)

Rack::RACK_LOGGER = T.let(T.unsafe(nil), String)

Rack::RACK_METHODOVERRIDE_ORIGINAL_METHOD = T.let(T.unsafe(nil), String)

Rack::RACK_MULTIPART_BUFFER_SIZE = T.let(T.unsafe(nil), String)

Rack::RACK_MULTIPART_TEMPFILE_FACTORY = T.let(T.unsafe(nil), String)

Rack::RACK_MULTIPROCESS = T.let(T.unsafe(nil), String)

Rack::RACK_MULTITHREAD = T.let(T.unsafe(nil), String)

Rack::RACK_RECURSIVE_INCLUDE = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_COOKIE_HASH = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_COOKIE_STRING = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_FORM_HASH = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_FORM_INPUT = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_FORM_VARS = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_QUERY_HASH = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_QUERY_STRING = T.let(T.unsafe(nil), String)

Rack::RACK_RUNONCE = T.let(T.unsafe(nil), String)

Rack::RACK_SESSION = T.let(T.unsafe(nil), String)

Rack::RACK_SESSION_OPTIONS = T.let(T.unsafe(nil), String)

Rack::RACK_SESSION_UNPACKED_COOKIE_DATA = T.let(T.unsafe(nil), String)

Rack::RACK_SHOWSTATUS_DETAIL = T.let(T.unsafe(nil), String)

Rack::RACK_TEMPFILES = T.let(T.unsafe(nil), String)

Rack::RACK_URL_SCHEME = T.let(T.unsafe(nil), String)

Rack::RACK_VERSION = T.let(T.unsafe(nil), String)

Rack::RELEASE = T.let(T.unsafe(nil), String)

Rack::REQUEST_METHOD = T.let(T.unsafe(nil), String)

Rack::REQUEST_PATH = T.let(T.unsafe(nil), String)

Rack::SCRIPT_NAME = T.let(T.unsafe(nil), String)

Rack::SERVER_NAME = T.let(T.unsafe(nil), String)

Rack::SERVER_PORT = T.let(T.unsafe(nil), String)

Rack::SERVER_PROTOCOL = T.let(T.unsafe(nil), String)

Rack::SET_COOKIE = T.let(T.unsafe(nil), String)

module Rack::Session
end

class Rack::Session::Dalli < ::Rack::Session::Abstract::Persisted
  def initialize(app, options = T.unsafe(nil)); end

  def delete_session(req, sid, options); end
  def destroy_session(env, session_id, options); end
  def find_session(req, sid); end
  def get_session(env, sid); end
  def mutex; end
  def pool; end
  def set_session(env, session_id, new_session, options); end
  def write_session(req, sid, session, options); end

  private

  def extract_dalli_options(options); end
  def generate_sid_with(dc); end
  def ttl(expire_after); end
  def with_block(env, default = T.unsafe(nil), &block); end
end

Rack::Session::Dalli::DEFAULT_DALLI_OPTIONS = T.let(T.unsafe(nil), Hash)

Rack::Session::Memcache = Rack::Session::Dalli

Rack::TRACE = T.let(T.unsafe(nil), String)

Rack::TRANSFER_ENCODING = T.let(T.unsafe(nil), String)

Rack::UNLINK = T.let(T.unsafe(nil), String)

Rack::VERSION = T.let(T.unsafe(nil), Array)
