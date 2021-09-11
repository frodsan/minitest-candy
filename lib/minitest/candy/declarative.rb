module Minitest
  module Candy
    module Declarative
      # Public: Helper to define a test method using a String.
      #
      # Examples
      #
      #   require "minitest/autorun"
      #   require "minitest/candy"
      #
      #   class TruthTest < Minitest::Test
      #     test "assert the truth" do
      #       assert true
      #     end
      #   end
      #
      def test(name, &block)
        test_name = sprintf("test_%s", name.gsub(/\s+/, "_"))

        if method_defined?(test_name)
          raise "#{test_name} is already defined in #{self}"
        end

        define_method(test_name, &block)
      end
    end
  end
end
