minitest-candy ![CI](https://github.com/frodsan/minitest-candy/actions/workflows/ci.yml/badge.svg)
==============

Useful helpers for Minitest 5+.

Installation
------------

Add this line to your application's Gemfile:

```ruby
gem "minitest-candy"
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install minitest-candy
```

Usage
-----

```ruby
require "minitest/autorun"
require "minitest/candy"

class TruthTest < Minitest::Test
  # Adds support for `setup` and `teardown` callbacks:
  setup do
    @truth = true
  end

  teardown do
    @truth = nil
  end

  # Define a test method using a String. Instead of
  # `def test_assert_the_truth`, do:
  test "assert the truth" do
    assert @truth
  end

  # Includes extra assertions:
  test "better assertions" do
    assert_not false
    assert_not_equal "1", "2"
    assert_not_empty [1, 2, 3]
    assert_nothing_raised do
      super_secure_method()
    end
  end
end
```

Contributing
------------

Fork the project with:

```
$ git clone git@github.com:frodsan/minitest-candy.git
```

To install dependencies, use:

```
$ bundle install
```

To run the test suite, do:

```
$ rake test
```

For bug reports and pull requests use [GitHub][issues].

License
-------

This gem is released under the [MIT License][mit].

[mit]: http://www.opensource.org/licenses/MIT
[issues]: https://github.com/frodsan/minitest-candy/issues
