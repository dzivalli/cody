# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `factory_bot` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

module FactoryBot
  extend(::FactoryBot::Syntax::Methods)
  extend(::FactoryBot::Syntax::Default)

  class << self
    def aliases; end
    def aliases=(_arg0); end
    def aliases_for(attribute); end
    def automatically_define_enum_traits; end
    def automatically_define_enum_traits=(obj); end
    def build_stubbed_starting_id=(starting_id); end
    def definition_file_paths; end
    def definition_file_paths=(_arg0); end
    def factories(*_arg0, &_arg1); end
    def find_definitions; end
    def lint(*args); end
    def register_strategy(*_arg0, &_arg1); end
    def reload; end
    def rewind_sequences(*_arg0, &_arg1); end
    def strategy_by_name(*_arg0, &_arg1); end
    def use_parent_strategy; end
    def use_parent_strategy=(obj); end
  end
end

class FactoryBot::AssociationDefinitionError < ::RuntimeError
end

class FactoryBot::Attribute
  def initialize(name, ignored); end

  def alias_for?(attr); end
  def association?; end
  def ignored; end
  def name; end
  def to_proc; end
end

class FactoryBot::Attribute::Association < ::FactoryBot::Attribute
  def initialize(name, factory, overrides); end

  def association?; end
  def factory; end
  def to_proc; end
end

class FactoryBot::Attribute::Dynamic < ::FactoryBot::Attribute
  def initialize(name, ignored, block); end

  def to_proc; end
end

class FactoryBot::Attribute::Sequence < ::FactoryBot::Attribute
  def initialize(name, sequence, ignored); end

  def to_proc; end
end

class FactoryBot::AttributeAssigner
  def initialize(evaluator, build_class, &instance_builder); end

  def hash; end
  def object; end

  private

  def alias_names_to_ignore; end
  def association_names; end
  def attribute_names_to_assign; end
  def attributes_to_set_on_hash; end
  def attributes_to_set_on_instance; end
  def build_class_instance; end
  def build_hash; end
  def decorated_evaluator; end
  def get(attribute_name); end
  def hash_instance_methods_to_respond_to; end
  def ignorable_alias?(attribute, override); end
  def ignored_attribute_names; end
  def method_tracking_evaluator; end
  def methods_invoked_on_evaluator; end
  def non_ignored_attribute_names; end
  def override_names; end
end

class FactoryBot::AttributeDefinitionError < ::RuntimeError
end

class FactoryBot::AttributeList
  include(::Enumerable)

  def initialize(name = T.unsafe(nil), attributes = T.unsafe(nil)); end

  def apply_attributes(attributes_to_apply); end
  def associations; end
  def define_attribute(attribute); end
  def each(&block); end
  def ignored; end
  def names; end
  def non_ignored; end

  private

  def add_attribute(attribute); end
  def attribute_defined?(attribute_name); end
  def ensure_attribute_not_defined!(attribute); end
  def ensure_attribute_not_self_referencing!(attribute); end
end

class FactoryBot::Callback
  def initialize(name, block); end

  def ==(other); end
  def name; end
  def run(instance, evaluator); end

  protected

  def block; end

  private

  def syntax_runner; end
end

class FactoryBot::CallbacksObserver
  def initialize(callbacks, evaluator); end

  def update(name, result_instance); end

  private

  def callbacks_by_name(name); end
end

class FactoryBot::Configuration
  def initialize; end

  def after(*_arg0, &_arg1); end
  def before(*_arg0, &_arg1); end
  def callback(*_arg0, &_arg1); end
  def callback_names; end
  def callbacks(*_arg0, &_arg1); end
  def constructor(*_arg0, &_arg1); end
  def factories; end
  def initialize_with(&block); end
  def inline_sequences; end
  def sequences; end
  def skip_create(*_arg0, &_arg1); end
  def strategies; end
  def to_create(*_arg0, &_arg1); end
  def traits; end
end

class FactoryBot::Declaration
  def initialize(name, ignored = T.unsafe(nil)); end

  def name; end
  def to_attributes; end

  protected

  def ignored; end
end

class FactoryBot::Declaration::Association < ::FactoryBot::Declaration
  def initialize(name, *options); end

  def ==(other); end

  protected

  def options; end

  private

  def build; end
  def factory_name; end
  def overrides; end
  def raise_if_arguments_are_declarations!; end
  def traits; end
end

class FactoryBot::Declaration::Dynamic < ::FactoryBot::Declaration
  def initialize(name, ignored = T.unsafe(nil), block = T.unsafe(nil)); end

  def ==(other); end

  protected

  def block; end

  private

  def build; end
end

class FactoryBot::Declaration::Implicit < ::FactoryBot::Declaration
  def initialize(name, factory = T.unsafe(nil), ignored = T.unsafe(nil)); end

  def ==(other); end

  protected

  def factory; end

  private

  def build; end
end

class FactoryBot::DeclarationList
  include(::Enumerable)

  def initialize(name = T.unsafe(nil)); end

  def attributes; end
  def declare_attribute(declaration); end
  def each(&block); end
  def overridable; end

  private

  def delete_declaration(declaration); end
  def overridable?; end
  def to_attributes; end
end

class FactoryBot::Decorator < ::BasicObject
  def initialize(component); end

  def method_missing(*_arg0, &_arg1); end
  def send(*_arg0, &_arg1); end

  private

  def respond_to_missing?(name, include_private = T.unsafe(nil)); end

  class << self
    def const_missing(name); end
  end
end

class FactoryBot::Decorator::AttributeHash < ::FactoryBot::Decorator
  def initialize(component, attributes = T.unsafe(nil)); end

  def attributes; end
end

class FactoryBot::Decorator::DisallowsDuplicatesRegistry < ::FactoryBot::Decorator
  def register(name, item); end
end

class FactoryBot::Decorator::InvocationTracker < ::FactoryBot::Decorator
  def initialize(component); end

  def __invoked_methods__; end
  def method_missing(name, *args, **kwargs, &block); end
end

class FactoryBot::Decorator::NewConstructor < ::FactoryBot::Decorator
  def initialize(component, build_class); end

  def new(*_arg0, &_arg1); end
end

class FactoryBot::Definition
  def initialize(name, base_traits = T.unsafe(nil)); end

  def add_callback(callback); end
  def after(*names, &block); end
  def append_traits(new_traits); end
  def attributes; end
  def before(*names, &block); end
  def callback(*names, &block); end
  def callbacks; end
  def compile(klass = T.unsafe(nil)); end
  def constructor; end
  def declarations; end
  def declare_attribute(*_arg0, &_arg1); end
  def define_constructor(&block); end
  def define_trait(trait); end
  def defined_traits; end
  def inherit_traits(new_traits); end
  def name; end
  def overridable; end
  def register_enum(enum); end
  def registered_enums; end
  def skip_create; end
  def to_create(&block); end

  private

  def additional_traits; end
  def aggregate_from_traits_and_self(method_name, &block); end
  def automatically_register_defined_enums(klass); end
  def automatically_register_defined_enums?(klass); end
  def base_traits; end
  def expand_enum_traits(klass); end
  def initialize_copy(source); end
  def trait_by_name(name); end
  def trait_for(name); end
end

class FactoryBot::DefinitionHierarchy
  def callbacks(*_arg0, &_arg1); end
  def constructor(*_arg0, &_arg1); end
  def to_create(*_arg0, &_arg1); end

  class << self
    def build_from_definition(definition); end

    private

    def add_callbacks(callbacks); end
    def build_constructor(&block); end
    def build_to_create(&block); end
  end
end

class FactoryBot::DefinitionProxy
  def initialize(definition, ignore = T.unsafe(nil)); end

  def add_attribute(name, &block); end
  def after(*_arg0, &_arg1); end
  def association(name, *options); end
  def before(*_arg0, &_arg1); end
  def callback(*_arg0, &_arg1); end
  def child_factories; end
  def factory(name, options = T.unsafe(nil), &block); end
  def initialize_with(&block); end
  def method_missing(name, *args, &block); end
  def sequence(name, *args, &block); end
  def singleton_method_added(name); end
  def skip_create; end
  def to_create(&block); end
  def trait(name, &block); end
  def traits_for_enum(attribute_name, values = T.unsafe(nil)); end
  def transient(&block); end

  private

  def __declare_attribute__(name, block); end
  def __valid_association_options?(options); end
end

FactoryBot::DefinitionProxy::UNPROXIED_METHODS = T.let(T.unsafe(nil), Array)

FactoryBot::Deprecation = T.let(T.unsafe(nil), ActiveSupport::Deprecation)

class FactoryBot::DuplicateDefinitionError < ::RuntimeError
end

class FactoryBot::Enum
  def initialize(attribute_name, values = T.unsafe(nil)); end

  def build_traits(klass); end

  private

  def build_trait(trait_name, attribute_name, value); end
  def enum_values(klass); end
end

class FactoryBot::Evaluation
  include(::Observable)

  def initialize(evaluator, attribute_assigner, to_create); end

  def create(result_instance); end
  def hash(*_arg0, &_arg1); end
  def notify(name, result_instance); end
  def object(*_arg0, &_arg1); end
end

class FactoryBot::Evaluator
  def initialize(build_strategy, overrides = T.unsafe(nil)); end

  def __override_names__; end
  def association(factory_name, *traits_and_overrides); end
  def attribute_lists; end
  def attribute_lists=(val); end
  def attribute_lists?; end
  def increment_sequence(sequence); end
  def instance; end
  def instance=(_arg0); end
  def method_missing(method_name, *args, **kwargs, &block); end

  private

  def respond_to_missing?(method_name, _include_private = T.unsafe(nil)); end

  class << self
    def attribute_list; end
    def attribute_lists; end
    def attribute_lists=(val); end
    def attribute_lists?; end
    def define_attribute(name, &block); end
  end
end

class FactoryBot::EvaluatorClassDefiner
  def initialize(attributes, parent_class); end

  def evaluator_class; end
end

class FactoryBot::Factory
  def initialize(name, options = T.unsafe(nil)); end

  def add_callback(*_arg0, &_arg1); end
  def append_traits(*_arg0, &_arg1); end
  def associations; end
  def build_class; end
  def compile; end
  def constructor(*_arg0, &_arg1); end
  def declare_attribute(*_arg0, &_arg1); end
  def define_trait(*_arg0, &_arg1); end
  def defined_traits(*_arg0, &_arg1); end
  def definition; end
  def human_names; end
  def inherit_traits(*_arg0, &_arg1); end
  def name; end
  def names; end
  def run(build_strategy, overrides, &block); end
  def to_create(*_arg0, &_arg1); end
  def with_traits(traits); end

  protected

  def attributes; end
  def build_hierarchy; end
  def callbacks; end
  def class_name; end
  def compiled_constructor; end
  def compiled_to_create; end
  def evaluator_class; end
  def hierarchy_class; end
  def hierarchy_instance; end

  private

  def assert_valid_options(options); end
  def initialize_copy(source); end
  def parent; end
end

class FactoryBot::FactoryRunner
  def initialize(name, strategy, traits_and_overrides); end

  def run(runner_strategy = T.unsafe(nil), &block); end
end

module FactoryBot::Internal
  class << self
    def after(*_arg0, &_arg1); end
    def before(*_arg0, &_arg1); end
    def callbacks(*_arg0, &_arg1); end
    def configuration; end
    def constructor(*_arg0, &_arg1); end
    def factories(*_arg0, &_arg1); end
    def factory_by_name(name); end
    def initialize_with(*_arg0, &_arg1); end
    def inline_sequences(*_arg0, &_arg1); end
    def register_default_strategies; end
    def register_factory(factory); end
    def register_inline_sequence(sequence); end
    def register_sequence(sequence); end
    def register_strategy(strategy_name, strategy_class); end
    def register_trait(trait); end
    def reset_configuration; end
    def rewind_inline_sequences; end
    def rewind_sequences; end
    def sequence_by_name(name); end
    def sequences(*_arg0, &_arg1); end
    def skip_create(*_arg0, &_arg1); end
    def strategies(*_arg0, &_arg1); end
    def strategy_by_name(name); end
    def to_create(*_arg0, &_arg1); end
    def trait_by_name(name); end
    def traits(*_arg0, &_arg1); end
  end
end

class FactoryBot::InvalidCallbackNameError < ::RuntimeError
end

class FactoryBot::InvalidFactoryError < ::RuntimeError
end

class FactoryBot::Linter
  def initialize(factories, strategy: T.unsafe(nil), traits: T.unsafe(nil), verbose: T.unsafe(nil)); end

  def lint!; end

  private

  def calculate_invalid_factories; end
  def error_message; end
  def error_message_type; end
  def factories_to_lint; end
  def factory_strategy; end
  def invalid_factories; end
  def lint(factory); end
  def lint_factory(factory); end
  def lint_traits(factory); end
end

class FactoryBot::Linter::FactoryError
  def initialize(wrapped_error, factory); end

  def location; end
  def message; end
  def verbose_message; end
end

class FactoryBot::Linter::FactoryTraitError < ::FactoryBot::Linter::FactoryError
  def initialize(wrapped_error, factory, trait_name); end

  def location; end
end

class FactoryBot::MethodDefinitionError < ::RuntimeError
end

class FactoryBot::NullFactory
  def initialize; end

  def attributes(*_arg0, &_arg1); end
  def callbacks(*_arg0, &_arg1); end
  def class_name; end
  def compile; end
  def constructor(*_arg0, &_arg1); end
  def defined_traits(*_arg0, &_arg1); end
  def definition; end
  def evaluator_class; end
  def hierarchy_class; end
  def to_create(*_arg0, &_arg1); end
end

class FactoryBot::NullObject < ::BasicObject
  def initialize(methods_to_respond_to); end

  def method_missing(name, *args, &block); end
  def respond_to?(method); end
end

class FactoryBot::Registry
  include(::Enumerable)

  def initialize(name); end

  def [](name); end
  def clear; end
  def each(&block); end
  def find(name); end
  def name; end
  def register(name, item); end
  def registered?(name); end

  private

  def key_error_with_custom_message(key_error); end
end

class FactoryBot::Sequence
  def initialize(name, *args, &proc); end

  def name; end
  def names; end
  def next(scope = T.unsafe(nil)); end
  def rewind; end

  private

  def increment_value; end
  def value; end
end

class FactoryBot::Sequence::EnumeratorAdapter
  def initialize(value); end

  def next; end
  def peek; end
  def rewind; end
end

class FactoryBot::SequenceAbuseError < ::RuntimeError
end

module FactoryBot::Strategy
end

class FactoryBot::Strategy::AttributesFor
  def association(runner); end
  def result(evaluation); end
end

class FactoryBot::Strategy::Build
  def association(runner); end
  def result(evaluation); end
end

class FactoryBot::Strategy::Create
  def association(runner); end
  def result(evaluation); end
end

class FactoryBot::Strategy::Null
  def association(runner); end
  def result(evaluation); end
end

class FactoryBot::Strategy::Stub
  def association(runner); end
  def result(evaluation); end

  private

  def clear_changes_information(result_instance); end
  def has_settable_id?(result_instance); end
  def missing_created_at?(result_instance); end
  def missing_updated_at?(result_instance); end
  def next_id; end
  def set_timestamps(result_instance); end
  def stub_database_interaction_on_result(result_instance); end

  class << self
    def next_id=(id); end
  end
end

FactoryBot::Strategy::Stub::DISABLED_PERSISTENCE_METHODS = T.let(T.unsafe(nil), Array)

class FactoryBot::StrategyCalculator
  def initialize(name_or_object); end

  def strategy; end

  private

  def strategy_is_object?; end
  def strategy_name_to_object; end
end

class FactoryBot::StrategySyntaxMethodRegistrar
  def initialize(strategy_name); end

  def define_strategy_methods; end

  private

  def define_list_strategy_method; end
  def define_pair_strategy_method; end
  def define_singular_strategy_method; end
  def define_syntax_method(name, &block); end

  class << self
    def with_index(block, index); end
  end
end

module FactoryBot::Syntax
end

module FactoryBot::Syntax::Default
  include(::FactoryBot::Syntax::Methods)

  def define(&block); end
  def modify(&block); end
end

class FactoryBot::Syntax::Default::DSL
  def after(*_arg0, &_arg1); end
  def before(*_arg0, &_arg1); end
  def callback(*_arg0, &_arg1); end
  def factory(name, options = T.unsafe(nil), &block); end
  def initialize_with(*_arg0, &_arg1); end
  def sequence(name, *args, &block); end
  def skip_create(*_arg0, &_arg1); end
  def to_create(*_arg0, &_arg1); end
  def trait(name, &block); end

  class << self
    def run(block); end
  end
end

class FactoryBot::Syntax::Default::ModifyDSL
  def factory(name, _options = T.unsafe(nil), &block); end

  class << self
    def run(block); end
  end
end

module FactoryBot::Syntax::Methods
  def attributes_for(name, *traits_and_overrides, &block); end
  def attributes_for_list(name, amount, *traits_and_overrides, &block); end
  def attributes_for_pair(name, *traits_and_overrides, &block); end
  def build(name, *traits_and_overrides, &block); end
  def build_list(name, amount, *traits_and_overrides, &block); end
  def build_pair(name, *traits_and_overrides, &block); end
  def build_stubbed(name, *traits_and_overrides, &block); end
  def build_stubbed_list(name, amount, *traits_and_overrides, &block); end
  def build_stubbed_pair(name, *traits_and_overrides, &block); end
  def create(name, *traits_and_overrides, &block); end
  def create_list(name, amount, *traits_and_overrides, &block); end
  def create_pair(name, *traits_and_overrides, &block); end
  def generate(name); end
  def generate_list(name, count); end
  def null(name, *traits_and_overrides, &block); end
  def null_list(name, amount, *traits_and_overrides, &block); end
  def null_pair(name, *traits_and_overrides, &block); end
end

class FactoryBot::SyntaxRunner
  include(::FactoryBot::Syntax::Methods)
end

class FactoryBot::Trait
  def initialize(name, &block); end

  def ==(other); end
  def add_callback(*_arg0, &_arg1); end
  def attributes(*_arg0, &_arg1); end
  def callbacks(*_arg0, &_arg1); end
  def constructor(*_arg0, &_arg1); end
  def declare_attribute(*_arg0, &_arg1); end
  def define_trait(*_arg0, &_arg1); end
  def definition; end
  def name; end
  def names; end
  def to_create(*_arg0, &_arg1); end

  protected

  def block; end
end

class FactoryBot::TraitDefinitionError < ::RuntimeError
end

FactoryBot::VERSION = T.let(T.unsafe(nil), String)
