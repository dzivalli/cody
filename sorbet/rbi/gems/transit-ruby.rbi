# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/transit-ruby/all/transit-ruby.rbi
#
# transit-ruby-0.8.602
module Transit
  def jruby?; end
  def self.jruby?; end
end
module Transit::DateTimeUtil
  def from_millis(millis); end
  def self.from_millis(millis); end
  def self.to_millis(v); end
  def to_millis(v); end
end
class Transit::Wrapper
  def ==(other); end
  def eql?(other); end
  def hash(*args, &block); end
  def initialize(value); end
  def inspect; end
  def to_s(*args, &block); end
  def to_sym(*args, &block); end
  def value; end
  extend Forwardable
end
class Transit::Symbol < Transit::Wrapper
  def initialize(sym); end
  def name; end
  def namespace; end
  def parsed; end
end
class Transit::ByteArray < Transit::Wrapper
  def self.from_base64(data); end
  def to_base64; end
  def to_s; end
end
class Transit::UUID
  def ==(other); end
  def digits(val, digits); end
  def eql?(other); end
  def hash; end
  def initialize(uuid_or_most_significant_bits = nil, least_significant_bits = nil); end
  def inspect; end
  def least_significant_bits; end
  def most_significant_bits; end
  def numbers_to_string; end
  def numeric_rep; end
  def self.random; end
  def string_to_numbers; end
  def to_s; end
  def twos_complement(integer_value, num_of_bits = nil); end
end
class Transit::Link
  def ==(other); end
  def eql?(other); end
  def hash; end
  def href; end
  def initialize(*args); end
  def name; end
  def prompt; end
  def reconcile_values(map); end
  def rel; end
  def render; end
  def to_h; end
end
class Transit::TaggedValue
  def ==(other); end
  def eql?(other); end
  def hash; end
  def initialize(tag, rep); end
  def rep; end
  def tag; end
end
class Transit::RollingCache
  def cache_key?(str, _ = nil); end
  def cacheable?(str, as_map_key = nil); end
  def clear; end
  def has_key?(*args, &block); end
  def initialize; end
  def next_key(i); end
  def read(key); end
  def size(*args, &block); end
  def write(val); end
  extend Forwardable
end
module Transit::WriteHandlers
end
class Transit::WriteHandlers::NilHandler
  def rep(_); end
  def string_rep(n); end
  def tag(_); end
end
class Transit::WriteHandlers::KeywordHandler
  def rep(s); end
  def string_rep(s); end
  def tag(_); end
end
class Transit::WriteHandlers::StringHandler
  def rep(s); end
  def string_rep(s); end
  def tag(_); end
end
class Transit::WriteHandlers::TrueHandler
  def rep(_); end
  def string_rep(_); end
  def tag(_); end
end
class Transit::WriteHandlers::FalseHandler
  def rep(_); end
  def string_rep(_); end
  def tag(_); end
end
class Transit::WriteHandlers::IntHandler
  def rep(i); end
  def string_rep(i); end
  def tag(i); end
end
class Transit::WriteHandlers::FloatHandler
  def rep(f); end
  def string_rep(f); end
  def tag(f); end
end
class Transit::WriteHandlers::BigDecimalHandler
  def rep(f); end
  def string_rep(f); end
  def tag(_); end
end
class Transit::WriteHandlers::RationalHandler
  def rep(r); end
  def string_rep(_); end
  def tag(_); end
end
class Transit::WriteHandlers::TimeHandler
  def rep(t); end
  def string_rep(t); end
  def tag(_); end
  def verbose_handler; end
end
class Transit::WriteHandlers::DateTimeHandler < Transit::WriteHandlers::TimeHandler
  def verbose_handler; end
end
class Transit::WriteHandlers::DateHandler < Transit::WriteHandlers::TimeHandler
  def verbose_handler; end
end
class Transit::WriteHandlers::VerboseTimeHandler
  def rep(t); end
  def string_rep(t); end
  def tag(_); end
end
class Transit::WriteHandlers::VerboseDateTimeHandler < Transit::WriteHandlers::VerboseTimeHandler
  def rep(t); end
end
class Transit::WriteHandlers::VerboseDateHandler < Transit::WriteHandlers::VerboseTimeHandler
  def rep(d); end
end
class Transit::WriteHandlers::UuidHandler
  def rep(u); end
  def string_rep(u); end
  def tag(_); end
end
class Transit::WriteHandlers::LinkHandler
  def rep(l); end
  def string_rep(_); end
  def tag(_); end
end
class Transit::WriteHandlers::UriHandler
  def rep(u); end
  def string_rep(u); end
  def tag(_); end
end
class Transit::WriteHandlers::AddressableUriHandler
  def rep(u); end
  def string_rep(u); end
  def tag(_); end
end
class Transit::WriteHandlers::ByteArrayHandler
  def rep(b); end
  def string_rep(b); end
  def tag(_); end
end
class Transit::WriteHandlers::TransitSymbolHandler
  def rep(s); end
  def string_rep(s); end
  def tag(_); end
end
class Transit::WriteHandlers::ArrayHandler
  def rep(a); end
  def string_rep(_); end
  def tag(_); end
end
class Transit::WriteHandlers::MapHandler
  def handlers=(handlers); end
  def rep(m); end
  def string_rep(_); end
  def stringable_keys?(m); end
  def tag(m); end
end
class Transit::WriteHandlers::SetHandler
  def rep(s); end
  def string_rep(_); end
  def tag(_); end
end
class Transit::WriteHandlers::TaggedValueHandler
  def rep(tv); end
  def string_rep(_); end
  def tag(tv); end
end
module Transit::ReadHandlers
end
class Transit::ReadHandlers::Default
  def from_rep(tag, val); end
end
class Transit::ReadHandlers::NilHandler
  def from_rep(_); end
end
class Transit::ReadHandlers::KeywordHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::BooleanHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::ByteArrayHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::FloatHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::IntegerHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::BigIntegerHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::BigDecimalHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::SpecialNumbersHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::IdentityHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::SymbolHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::TimeStringHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::TimeIntHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::UuidHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::UriHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::SetHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::LinkHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::CmapHandler
  def from_rep(v); end
end
class Transit::ReadHandlers::RatioHandler
  def from_rep(v); end
end
module Transit::Marshaler
end
module Transit::Marshaler::VerboseHandlers
  def build_handlers(custom_handlers); end
end
module Transit::Marshaler::Base
  def build_handlers(custom_handlers); end
  def emit_array(a, cache); end
  def emit_boolean(handler, b, as_map_key, cache); end
  def emit_double(d, as_map_key, cache); end
  def emit_encoded(handler, tag, obj, as_map_key, cache); end
  def emit_map(m, cache); end
  def emit_nil(as_map_key, cache); end
  def emit_string(prefix, tag, value, as_map_key, cache); end
  def emit_tagged_value(tag, rep, cache); end
  def escape(s); end
  def find_handler(obj); end
  def marshal(obj, as_map_key, cache); end
  def marshal_top(obj, cache = nil); end
  def parse_options(opts); end
end
class Transit::Writer
  def initialize(format, io, opts = nil); end
  def write(obj); end
end
class Transit::Decoder
  def decode(node, cache = nil, as_map_key = nil); end
  def initialize(options = nil); end
  def validate_handler(key, handler); end
end
class Transit::Decoder::Tag
  def initialize(value); end
  def value; end
end
class Transit::Reader
  def initialize(format, io, opts = nil); end
  def read(*args, &block); end
  extend Forwardable
end
class Transit::Marshaler::BaseJson
  def emit_array_end; end
  def emit_array_start(size); end
  def emit_int(tag, i, as_map_key, cache); end
  def emit_map_end; end
  def emit_map_start(size); end
  def emit_value(obj, as_map_key = nil); end
  def flush; end
  def initialize(io, opts); end
  include Transit::Marshaler::Base
end
class Transit::Marshaler::Json < Transit::Marshaler::BaseJson
  def emit_map(m, cache); end
end
class Transit::Marshaler::VerboseJson < Transit::Marshaler::BaseJson
  def emit_string(prefix, tag, value, as_map_key, cache); end
  def emit_tagged_value(tag, rep, cache); end
  include Transit::Marshaler::VerboseHandlers
end
class Transit::Marshaler::MessagePack
  def emit_array_end; end
  def emit_array_start(size); end
  def emit_int(tag, i, as_map_key, cache); end
  def emit_map_end; end
  def emit_map_start(size); end
  def emit_value(obj, as_map_key = nil); end
  def flush; end
  def initialize(io, opts); end
  include Transit::Marshaler::Base
end
module Transit::Unmarshaler
end
class Transit::Unmarshaler::Json
  def initialize(io, opts); end
  def read; end
end
class Transit::Unmarshaler::Json::ParseHandler
  def add_value(v); end
  def array_append(a, v); end
  def array_start; end
  def each(&block); end
  def error(message, line, column); end
  def hash_set(h, k, v); end
  def hash_start; end
end
class Transit::Unmarshaler::MessagePack
  def initialize(io, opts); end
  def read; end
end
