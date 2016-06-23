require 'test_helper'

class UniconvertTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Uniconvert::VERSION
  end

  def test_it_does_something_useful
    refute Uniconvert.to_html('test/fixtures/sample.txt', false)
  end
end
