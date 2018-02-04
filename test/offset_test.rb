require 'minitest/pride'
require 'minitest/autorun'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_if_exists
    offset = Offset.new

    assert_instance_of Offset, offset
  end

  def test_date_is_formatted_correctly
    offset = Offset.new

    assert_equal 40218, offset.date
  end

  def test_current_date_squared
    offset = Offset.new
    offset.date

    assert_equal 1617487524, offset.squared_date
  end

end
