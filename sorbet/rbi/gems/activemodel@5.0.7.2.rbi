# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `activemodel` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module ActiveModel
  extend ::ActiveSupport::Autoload

  class << self
    def eager_load!; end
    def gem_version; end
    def version; end
  end
end

module ActiveModel::AttributeAssignment
  include ::ActiveModel::ForbiddenAttributesProtection

  def assign_attributes(new_attributes); end

  private

  def _assign_attribute(k, v); end
  def _assign_attributes(attributes); end
end

module ActiveModel::AttributeMethods
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::ActiveModel::AttributeMethods::ClassMethods

  def attribute_missing(match, *args, &block); end
  def method_missing(method, *args, &block); end
  def respond_to?(method, include_private_methods = T.unsafe(nil)); end
  def respond_to_without_attributes?(*_arg0); end

  protected

  def attribute_method?(attr_name); end

  private

  def matched_attribute_method(method_name); end
  def missing_attribute(attr_name, stack); end
end

ActiveModel::AttributeMethods::CALL_COMPILABLE_REGEXP = T.let(T.unsafe(nil), Regexp)

module ActiveModel::AttributeMethods::ClassMethods
  def alias_attribute(new_name, old_name); end
  def attribute_alias(name); end
  def attribute_alias?(new_name); end
  def attribute_method_affix(*affixes); end
  def attribute_method_prefix(*prefixes); end
  def attribute_method_suffix(*suffixes); end
  def define_attribute_method(attr_name); end
  def define_attribute_methods(*attr_names); end
  def generated_attribute_methods; end
  def undefine_attribute_methods; end

  protected

  def instance_method_already_implemented?(method_name); end

  private

  def attribute_method_matchers_cache; end
  def attribute_method_matchers_matching(method_name); end
  def define_proxy_call(include_private, mod, name, send, *extra); end
end

class ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher
  def initialize(options = T.unsafe(nil)); end

  def match(method_name); end
  def method_missing_target; end
  def method_name(attr_name); end
  def plain?; end
  def prefix; end
  def suffix; end
end

class ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher::AttributeMethodMatch < ::Struct
  def attr_name; end
  def attr_name=(_); end
  def method_name; end
  def method_name=(_); end
  def target; end
  def target=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

ActiveModel::AttributeMethods::NAME_COMPILABLE_REGEXP = T.let(T.unsafe(nil), Regexp)

class ActiveModel::BlockValidator < ::ActiveModel::EachValidator
  def initialize(options, &block); end

  private

  def validate_each(record, attribute, value); end
end

module ActiveModel::Callbacks
  def define_model_callbacks(*callbacks); end

  private

  def _define_after_model_callback(klass, callback); end
  def _define_around_model_callback(klass, callback); end
  def _define_before_model_callback(klass, callback); end

  class << self
    def extended(base); end
  end
end

module ActiveModel::Conversion
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::ActiveModel::Conversion::ClassMethods

  def to_key; end
  def to_model; end
  def to_param; end
  def to_partial_path; end
end

module ActiveModel::Conversion::ClassMethods
  def _to_partial_path; end
end

module ActiveModel::Dirty
  extend ::ActiveSupport::Concern
  include ::ActiveModel::AttributeMethods

  def attribute_changed?(attr, from: T.unsafe(nil), to: T.unsafe(nil)); end
  def attribute_previously_changed?(attr); end
  def attribute_was(attr); end
  def attributes_changed_by_setter; end
  def changed; end
  def changed?; end
  def changed_attributes; end
  def changes; end
  def previous_changes; end
  def restore_attributes(attributes = T.unsafe(nil)); end

  private

  def attribute_change(attr); end
  def attribute_changed_by_setter?(attr_name); end
  def attribute_previous_change(attr); end
  def attribute_will_change!(attr); end
  def changes_applied; end
  def changes_include?(attr_name); end
  def clear_attribute_changes(attributes); end
  def clear_changes_information; end
  def previous_changes_include?(attr_name); end
  def restore_attribute!(attr); end
  def set_attribute_was(attr, old_value); end
end

ActiveModel::Dirty::OPTION_NOT_GIVEN = T.let(T.unsafe(nil), Object)

class ActiveModel::EachValidator < ::ActiveModel::Validator
  def initialize(options); end

  def attributes; end
  def check_validity!; end
  def validate(record); end
  def validate_each(record, attribute, value); end
end

class ActiveModel::Errors
  include ::Enumerable

  def initialize(base); end

  def [](attribute); end
  def []=(attribute, error); end
  def add(attribute, message = T.unsafe(nil), options = T.unsafe(nil)); end
  def add_on_blank(attributes, options = T.unsafe(nil)); end
  def add_on_empty(attributes, options = T.unsafe(nil)); end
  def added?(attribute, message = T.unsafe(nil), options = T.unsafe(nil)); end
  def as_json(options = T.unsafe(nil)); end
  def blank?; end
  def clear; end
  def copy!(other); end
  def count; end
  def delete(key); end
  def details; end
  def each; end
  def empty?; end
  def full_message(attribute, message); end
  def full_messages; end
  def full_messages_for(attribute); end
  def generate_message(attribute, type = T.unsafe(nil), options = T.unsafe(nil)); end
  def get(key); end
  def has_key?(attribute); end
  def include?(attribute); end
  def init_with(coder); end
  def key?(attribute); end
  def keys; end
  def marshal_dump; end
  def marshal_load(array); end
  def messages; end
  def set(key, value); end
  def size; end
  def to_a; end
  def to_hash(full_messages = T.unsafe(nil)); end
  def to_xml(options = T.unsafe(nil)); end
  def values; end

  private

  def apply_default_array(hash); end
  def initialize_dup(other); end
  def normalize_detail(message, options); end
  def normalize_message(attribute, message, options); end
  def without_default_proc(hash); end
end

ActiveModel::Errors::CALLBACKS_OPTIONS = T.let(T.unsafe(nil), Array)
ActiveModel::Errors::MESSAGE_OPTIONS = T.let(T.unsafe(nil), Array)
class ActiveModel::ForbiddenAttributesError < ::StandardError; end

module ActiveModel::ForbiddenAttributesProtection
  protected

  def sanitize_for_mass_assignment(attributes); end
  def sanitize_forbidden_attributes(attributes); end
end

module ActiveModel::Lint; end

module ActiveModel::Lint::Tests
  def test_errors_aref; end
  def test_model_naming; end
  def test_persisted?; end
  def test_to_key; end
  def test_to_param; end
  def test_to_partial_path; end

  private

  def assert_boolean(result, name); end
  def model; end
end

class ActiveModel::MissingAttributeError < ::NoMethodError; end

module ActiveModel::Model
  include ::ActiveModel::ForbiddenAttributesProtection
  include ::ActiveModel::AttributeAssignment
  extend ::ActiveSupport::Concern
  include ::ActiveSupport::Callbacks
  include ::ActiveModel::Validations::HelperMethods
  include ::ActiveModel::Validations
  include ::ActiveModel::Conversion

  def initialize(attributes = T.unsafe(nil)); end

  def persisted?; end
end

class ActiveModel::Name
  include ::Comparable

  def initialize(klass, namespace = T.unsafe(nil), name = T.unsafe(nil)); end

  def !~(*args, &block); end
  def <=>(*args, &block); end
  def ==(arg); end
  def ===(arg); end
  def =~(*args, &block); end
  def as_json(*args, &block); end
  def cache_key; end
  def collection; end
  def element; end
  def eql?(*args, &block); end
  def human(options = T.unsafe(nil)); end
  def i18n_key; end
  def name; end
  def param_key; end
  def plural; end
  def route_key; end
  def singular; end
  def singular_route_key; end
  def to_s(*args, &block); end
  def to_str(*args, &block); end

  private

  def _singularize(string); end
end

module ActiveModel::Naming
  def model_name; end

  class << self
    def extended(base); end
    def param_key(record_or_class); end
    def plural(record_or_class); end
    def route_key(record_or_class); end
    def singular(record_or_class); end
    def singular_route_key(record_or_class); end
    def uncountable?(record_or_class); end

    private

    def model_name_from_record_or_class(record_or_class); end
  end
end

class ActiveModel::Railtie < ::Rails::Railtie; end
class ActiveModel::RangeError < ::RangeError; end

module ActiveModel::SecurePassword
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::ActiveModel::SecurePassword::ClassMethods

  class << self
    def min_cost; end
    def min_cost=(_arg0); end
  end
end

module ActiveModel::SecurePassword::ClassMethods
  def has_secure_password(options = T.unsafe(nil)); end
end

module ActiveModel::SecurePassword::InstanceMethodsOnActivation
  def authenticate(unencrypted_password); end
  def password; end
  def password=(unencrypted_password); end
  def password_confirmation=(unencrypted_password); end
end

ActiveModel::SecurePassword::MAX_PASSWORD_LENGTH_ALLOWED = T.let(T.unsafe(nil), Integer)

module ActiveModel::Serialization
  def read_attribute_for_serialization(*_arg0); end
  def serializable_hash(options = T.unsafe(nil)); end

  private

  def serializable_add_includes(options = T.unsafe(nil)); end
end

module ActiveModel::Serializers
  extend ::ActiveSupport::Autoload
end

module ActiveModel::Serializers::JSON
  include ::ActiveModel::Serialization
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::ActiveModel::Naming

  def as_json(options = T.unsafe(nil)); end
  def from_json(json, include_root = T.unsafe(nil)); end
end

class ActiveModel::StrictValidationFailed < ::StandardError; end
class ActiveModel::TestCase < ::ActiveSupport::TestCase; end

module ActiveModel::Translation
  include ::ActiveModel::Naming

  def human_attribute_name(attribute, options = T.unsafe(nil)); end
  def i18n_scope; end
  def lookup_ancestors; end
end

module ActiveModel::Type
  class << self
    def add_modifier(*args, &block); end
    def lookup(*args, **kwargs); end
    def register(type_name, klass = T.unsafe(nil), **options, &block); end
    def registry; end
    def registry=(_arg0); end
  end
end

class ActiveModel::Type::BigInteger < ::ActiveModel::Type::Integer
  private

  def max_value; end
end

class ActiveModel::Type::Binary < ::ActiveModel::Type::Value
  def binary?; end
  def cast(value); end
  def changed_in_place?(raw_old_value, value); end
  def serialize(value); end
  def type; end
end

class ActiveModel::Type::Binary::Data
  def initialize(value); end

  def ==(other); end
  def hex; end
  def to_s; end
  def to_str; end
end

class ActiveModel::Type::Boolean < ::ActiveModel::Type::Value
  def type; end

  private

  def cast_value(value); end
end

ActiveModel::Type::Boolean::FALSE_VALUES = T.let(T.unsafe(nil), Set)

class ActiveModel::Type::Date < ::ActiveModel::Type::Value
  def serialize(value); end
  def type; end
  def type_cast_for_schema(value); end

  private

  def cast_value(value); end
  def fallback_string_to_date(string); end
  def fast_string_to_date(string); end
  def new_date(year, mon, mday); end
  def value_from_multiparameter_assignment(*_arg0); end
end

ActiveModel::Type::Date::ISO_DATE = T.let(T.unsafe(nil), Regexp)

class ActiveModel::Type::DateTime < ::ActiveModel::Type::Value
  include ::ActiveModel::Type::Helpers::TimeValue

  def type; end

  private

  def cast_value(value); end
  def fallback_string_to_time(string); end
  def microseconds(time); end
  def value_from_multiparameter_assignment(values_hash); end
end

class ActiveModel::Type::Decimal < ::ActiveModel::Type::Value
  include ::ActiveModel::Type::Helpers::Numeric

  def type; end
  def type_cast_for_schema(value); end

  private

  def apply_scale(value); end
  def cast_value(value); end
  def convert_float_to_big_decimal(value); end
  def float_precision; end
end

class ActiveModel::Type::DecimalWithoutScale < ::ActiveModel::Type::BigInteger
  def type; end
end

class ActiveModel::Type::Float < ::ActiveModel::Type::Value
  include ::ActiveModel::Type::Helpers::Numeric

  def serialize(value); end
  def type; end

  private

  def cast_value(value); end
end

module ActiveModel::Type::Helpers; end

class ActiveModel::Type::Helpers::AcceptsMultiparameterTime < ::Module
  def initialize(defaults: T.unsafe(nil)); end
end

module ActiveModel::Type::Helpers::Mutable
  def cast(value); end
  def changed_in_place?(raw_old_value, new_value); end
end

module ActiveModel::Type::Helpers::Numeric
  def cast(value); end
  def changed?(old_value, _new_value, new_value_before_type_cast); end

  private

  def non_numeric_string?(value); end
  def number_to_non_number?(old_value, new_value_before_type_cast); end
end

module ActiveModel::Type::Helpers::TimeValue
  def apply_seconds_precision(value); end
  def default_timezone; end
  def is_utc?; end
  def serialize(value); end
  def type_cast_for_schema(value); end
  def user_input_in_time_zone(value); end

  private

  def fast_string_to_time(string); end
  def new_time(year, mon, mday, hour, min, sec, microsec, offset = T.unsafe(nil)); end
end

ActiveModel::Type::Helpers::TimeValue::ISO_DATETIME = T.let(T.unsafe(nil), Regexp)

class ActiveModel::Type::ImmutableString < ::ActiveModel::Type::Value
  def serialize(value); end
  def type; end

  private

  def cast_value(value); end
end

class ActiveModel::Type::Integer < ::ActiveModel::Type::Value
  include ::ActiveModel::Type::Helpers::Numeric

  def initialize(*_arg0); end

  def deserialize(value); end
  def serialize(value); end
  def type; end

  protected

  def range; end

  private

  def _limit; end
  def cast_value(value); end
  def ensure_in_range(value); end
  def max_value; end
  def min_value; end
end

ActiveModel::Type::Integer::DEFAULT_LIMIT = T.let(T.unsafe(nil), Integer)

class ActiveModel::Type::Registration
  def initialize(name, block, **_arg2); end

  def call(_registry, *args, **kwargs); end
  def matches?(type_name, *args, **kwargs); end

  protected

  def block; end
  def name; end
end

class ActiveModel::Type::Registry
  def initialize; end

  def lookup(symbol, *args); end
  def register(type_name, klass = T.unsafe(nil), **options, &block); end

  protected

  def registrations; end

  private

  def find_registration(symbol, *args); end
  def registration_klass; end
end

class ActiveModel::Type::String < ::ActiveModel::Type::ImmutableString
  def changed_in_place?(raw_old_value, new_value); end

  private

  def cast_value(value); end
end

class ActiveModel::Type::Text < ::ActiveModel::Type::String
  def type; end
end

class ActiveModel::Type::Time < ::ActiveModel::Type::Value
  include ::ActiveModel::Type::Helpers::TimeValue

  def type; end
  def user_input_in_time_zone(value); end

  private

  def cast_value(value); end
end

class ActiveModel::Type::UnsignedInteger < ::ActiveModel::Type::Integer
  private

  def max_value; end
  def min_value; end
end

class ActiveModel::Type::Value
  def initialize(precision: T.unsafe(nil), limit: T.unsafe(nil), scale: T.unsafe(nil)); end

  def ==(other); end
  def assert_valid_value(*_arg0); end
  def binary?; end
  def cast(value); end
  def changed?(old_value, new_value, _new_value_before_type_cast); end
  def changed_in_place?(raw_old_value, new_value); end
  def deserialize(value); end
  def eql?(other); end
  def hash; end
  def limit; end
  def map(value); end
  def precision; end
  def scale; end
  def serialize(value); end
  def type; end
  def type_cast_for_schema(value); end

  private

  def cast_value(value); end
end

class ActiveModel::UnknownAttributeError < ::NoMethodError
  def initialize(record, attribute); end

  def attribute; end
  def record; end
end

module ActiveModel::VERSION; end
ActiveModel::VERSION::MAJOR = T.let(T.unsafe(nil), Integer)
ActiveModel::VERSION::MINOR = T.let(T.unsafe(nil), Integer)
ActiveModel::VERSION::PRE = T.let(T.unsafe(nil), String)
ActiveModel::VERSION::STRING = T.let(T.unsafe(nil), String)
ActiveModel::VERSION::TINY = T.let(T.unsafe(nil), Integer)

class ActiveModel::ValidationError < ::StandardError
  def initialize(model); end

  def model; end
end

module ActiveModel::Validations
  extend ::ActiveSupport::Concern
  include ::ActiveSupport::Callbacks
  include ::ActiveModel::Validations::HelperMethods

  mixes_in_class_methods ::ActiveModel::Validations::ClassMethods

  def errors; end
  def invalid?(context = T.unsafe(nil)); end
  def read_attribute_for_validation(*_arg0); end
  def valid?(context = T.unsafe(nil)); end
  def validate(context = T.unsafe(nil)); end
  def validate!(context = T.unsafe(nil)); end
  def validates_with(*args, &block); end

  protected

  def raise_validation_error; end
  def run_validations!; end

  private

  def initialize_dup(other); end
end

class ActiveModel::Validations::AbsenceValidator < ::ActiveModel::EachValidator
  def validate_each(record, attr_name, value); end
end

class ActiveModel::Validations::AcceptanceValidator < ::ActiveModel::EachValidator
  def initialize(options); end

  def validate_each(record, attribute, value); end

  private

  def acceptable_option?(value); end
  def setup!(klass); end
end

class ActiveModel::Validations::AcceptanceValidator::AttributeDefinition
  def initialize(attributes); end

  def define_on(klass); end
  def matches?(method_name); end

  protected

  def attributes; end

  private

  def convert_to_reader_name(method_name); end
end

class ActiveModel::Validations::AcceptanceValidator::LazilyDefineAttributes < ::Module
  def initialize(attribute_definition); end
end

module ActiveModel::Validations::Callbacks
  extend ::ActiveSupport::Concern
  include ::ActiveSupport::Callbacks

  mixes_in_class_methods ::ActiveModel::Validations::Callbacks::ClassMethods

  protected

  def run_validations!; end
end

module ActiveModel::Validations::Callbacks::ClassMethods
  def after_validation(*args, &block); end
  def before_validation(*args, &block); end
end

module ActiveModel::Validations::ClassMethods
  def attribute_method?(attribute); end
  def clear_validators!; end
  def inherited(base); end
  def validate(*args, &block); end
  def validates(*attributes); end
  def validates!(*attributes); end
  def validates_each(*attr_names, &block); end
  def validates_with(*args, &block); end
  def validators; end
  def validators_on(*attributes); end

  protected

  def _parse_validates_options(options); end
  def _validates_default_keys; end
end

ActiveModel::Validations::ClassMethods::VALID_OPTIONS_FOR_VALIDATE = T.let(T.unsafe(nil), Array)

module ActiveModel::Validations::Clusivity
  def check_validity!; end

  private

  def delimiter; end
  def include?(record, value); end
  def inclusion_method(enumerable); end
end

ActiveModel::Validations::Clusivity::ERROR_MESSAGE = T.let(T.unsafe(nil), String)

class ActiveModel::Validations::ConfirmationValidator < ::ActiveModel::EachValidator
  def initialize(options); end

  def validate_each(record, attribute, value); end

  private

  def confirmation_value_equal?(record, attribute, value, confirmed); end
  def setup!(klass); end
end

class ActiveModel::Validations::ExclusionValidator < ::ActiveModel::EachValidator
  include ::ActiveModel::Validations::Clusivity

  def validate_each(record, attribute, value); end
end

class ActiveModel::Validations::FormatValidator < ::ActiveModel::EachValidator
  def check_validity!; end
  def validate_each(record, attribute, value); end

  private

  def check_options_validity(name); end
  def option_call(record, name); end
  def record_error(record, attribute, name, value); end
  def regexp_using_multiline_anchors?(regexp); end
end

module ActiveModel::Validations::HelperMethods
  def validates_absence_of(*attr_names); end
  def validates_acceptance_of(*attr_names); end
  def validates_confirmation_of(*attr_names); end
  def validates_exclusion_of(*attr_names); end
  def validates_format_of(*attr_names); end
  def validates_inclusion_of(*attr_names); end
  def validates_length_of(*attr_names); end
  def validates_numericality_of(*attr_names); end
  def validates_presence_of(*attr_names); end
  def validates_size_of(*attr_names); end

  private

  def _merge_attributes(attr_names); end
end

class ActiveModel::Validations::InclusionValidator < ::ActiveModel::EachValidator
  include ::ActiveModel::Validations::Clusivity

  def validate_each(record, attribute, value); end
end

class ActiveModel::Validations::LengthValidator < ::ActiveModel::EachValidator
  def initialize(options); end

  def check_validity!; end
  def validate_each(record, attribute, value); end

  private

  def skip_nil_check?(key); end
  def tokenize(record, value); end
end

ActiveModel::Validations::LengthValidator::CHECKS = T.let(T.unsafe(nil), Hash)
ActiveModel::Validations::LengthValidator::MESSAGES = T.let(T.unsafe(nil), Hash)
ActiveModel::Validations::LengthValidator::RESERVED_OPTIONS = T.let(T.unsafe(nil), Array)

class ActiveModel::Validations::NumericalityValidator < ::ActiveModel::EachValidator
  def check_validity!; end
  def validate_each(record, attr_name, value); end

  protected

  def allow_only_integer?(record); end
  def filtered_options(value); end
  def is_integer?(raw_value); end
  def is_number?(raw_value); end
  def parse_raw_value_as_a_number(raw_value); end

  private

  def record_attribute_changed_in_place?(record, attr_name); end
end

ActiveModel::Validations::NumericalityValidator::CHECKS = T.let(T.unsafe(nil), Hash)
ActiveModel::Validations::NumericalityValidator::RESERVED_OPTIONS = T.let(T.unsafe(nil), Array)

class ActiveModel::Validations::PresenceValidator < ::ActiveModel::EachValidator
  def validate_each(record, attr_name, value); end
end

class ActiveModel::Validations::WithValidator < ::ActiveModel::EachValidator
  def validate_each(record, attr, val); end
end

class ActiveModel::Validator
  def initialize(options = T.unsafe(nil)); end

  def kind; end
  def options; end
  def validate(record); end

  class << self
    def kind; end
  end
end
