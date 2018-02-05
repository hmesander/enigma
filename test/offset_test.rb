require 'minitest/pride'
require 'minitest/autorun'
require './lib/offset'

# Tests for rotation offset calculator.
class OffsetTest < Minitest::Test
  def test_if_exists
    offset = Offset.new

    assert_instance_of Offset, offset
  end

  def test_date_squared
    offset = Offset.new
    offset.date

    assert_equal '1617487524', offset.squared_date
  end

  def test_last_four_digits
    offset = Offset.new
    offset.squared_date

    assert_equal '7524', offset.last_four_digits
  end

  def test_a_total_rotation
    offset = Offset.new
    offset.squared_date

    assert_equal 3, offset.a_rotation
  end

  def test_b_total_rotation
    offset = Offset.new
    offset.squared_date

    assert_equal 4, offset.b_rotation
  end

  def test_c_total_rotation
    offset = Offset.new
    offset.squared_date

    assert_equal 5, offset.c_rotation
  end

  def test_d_total_rotation
    offset = Offset.new
    offset.squared_date

    assert_equal 6, offset.d_rotation
  end
end
