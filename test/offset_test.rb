require 'minitest/pride'
require 'minitest/autorun'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_if_exists
    offset = Offset.new

    assert_instance_of Offset, offset
  end





end
