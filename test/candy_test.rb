require_relative "test_helper"

class MinitestCandyTest < Minitest::Test
  setup do
    @bar = "bar"
  end

  test "defines a friendly human description" do
    assert true
  end

  test "raises if the name is already taken" do
    self.class.test("name") {}

    assert_raises(RuntimeError) do
      self.class.test("name") {}
    end
  end

  test "assertions" do
    assert_nothing_raised do
      assert_not nil
      assert_not false
      assert_not_equal "1", "2"
    end
  end

  teardown do
    assert_equal("bar", @bar)
  end
end
