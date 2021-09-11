module Minitest
  module Candy
    module Assertions
      # Public: Asserts that an expression is not truthy. Passes if <tt>object</tt> is
      # +nil+ or +false+. "Truthy" means "considered true in a conditional" like <tt>if foo</tt>.
      #
      # Examples
      #
      #   require "minitest/autorun"
      #   require "minitest/candy"
      #
      #   class AssertNotTest < Minitest::Test
      #     test "assert not" do
      #       assert_not nil    # => true
      #       assert_not false  # => true
      #       assert_not 'foo'  # => Expected "foo" to be nil or false
      #     end
      #   end
      #
      # An error message can be specified.
      #
      #   assert_not foo, 'foo should be false'
      #
      def assert_not(object, message = nil)
        message ||= "Expected #{mu_pp(object)} to be nil or false"
        assert !object, message
      end

      # Public: Asserts that the given block does not raise an exception.
      #
      # Examples
      #
      #   require "minitest/autorun"
      #   require "minitest/candy"
      #
      #   class AssertNotTest < Minitest::Test
      #     test "should not raise an exception" do
      #       assert_nothing_raised do
      #         perform_safe_operation()
      #       end
      #     end
      #   end
      #
      def assert_nothing_raised
        yield
      rescue => error
        raise Minitest::UnexpectedError.new(error)
      end
    end
  end
end
