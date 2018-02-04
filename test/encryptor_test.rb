require 'minitest/pride'
require 'minitest/autorun'
require './lib/encryptor'

class EncryptorTest < Minitest::Test

  def test_if_exists
    encryptor = Encryptor.new

    assert_instance_of Encryptor, encryptor
  end

  def test_total_rotation_values
    encryptor =  Encryptor.new

    assert_equal 

  end
end
