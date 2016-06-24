require 'test_helper'

class UniconvertTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::Uniconvert::VERSION
  end

  def test_file_converter
    refute Uniconvert.file_to(:HTML, 'test/fixtures/sample.txt', false)
  end

  def test_converters_fail_on_dir
    refute Uniconvert.file_to(:HTML, 'test/fixtures/', false), "Cannot process directories, files & strings only!"
  end

  def test_string_converter
    assert Uniconvert.str_to(:HTML, 'Maître Corbeau, sur un arbre perché,', false).is_a? String
  end

end
