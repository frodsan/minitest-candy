require_relative "candy/declarative"
require_relative "candy/callbacks"
require_relative "candy/assertions"

module Minitest
  class Test
    extend Minitest::Candy::Declarative
    extend Minitest::Candy::Callbacks
    include Minitest::Candy::Assertions

    # Prefer `assert_not_*`` than `refute_*``:
    alias_method :assert_raise, :assert_raises
    alias_method :assert_not_empty, :refute_empty
    alias_method :assert_not_equal, :refute_equal
    alias_method :assert_not_in_delta, :refute_in_delta
    alias_method :assert_not_in_epsilon, :refute_in_epsilon
    alias_method :assert_not_includes, :refute_includes
    alias_method :assert_not_instance_of, :refute_instance_of
    alias_method :assert_not_kind_of, :refute_kind_of
    alias_method :assert_no_match, :refute_match
    alias_method :assert_not_nil, :refute_nil
    alias_method :assert_not_operator, :refute_operator
    alias_method :assert_not_predicate, :refute_predicate
    alias_method :assert_not_respond_to, :refute_respond_to
    alias_method :assert_not_same, :refute_same
  end
end
