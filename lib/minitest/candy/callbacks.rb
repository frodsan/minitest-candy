module Minitest
  module Candy
    module Callbacks
      # Public: Helper to define a +setup+ method.
      #
      # Examples
      #
      #   require "minitest/autorun"
      #   require "minitest/candy"
      #
      #   class TruthTest < Minitest::Test
      #     setup do
      #       @truth = true
      #     end
      #
      #     test "assert the truth" do
      #       assert @truth
      #     end
      #   end
      #
      def setup(&block)
        define_method(:setup) do
          super()

          instance_exec(&block)
        end
      end

      # Public: Helper to define a +teardown+ method.
      #
      # Examples
      #
      #   require "minitest/autorun"
      #   require "minitest/candy"
      #
      #   class TruthTest < Minitest::Test
      #     setup do
      #       @truth = true
      #     end
      #
      #     teardown do
      #       @truth = nil
      #     end
      #
      #     test "assert the truth" do
      #       assert @truth
      #     end
      #   end
      #
      def teardown(&block)
        define_method(:teardown) do
          instance_exec(&block)

          super()
        end
      end
    end
  end
end
