require './lib/keygenerator'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class KeyGeneratorTest < Minitest::Test
  def test_that_key_generator_class_exists
    key_generator = KeyGenerator.new

    assert_instance_of KeyGenerator, key_generator
  end

  def test_that_key_generated_is_an_integer
    key_generator = KeyGenerator.new

    assert_instance_of String, key_generator.new_key
  end

  def test_that_key_generated_is_five_digits
    key_generator = KeyGenerator.new

    assert_equal 5, key_generator.new_key.length
  end

  def test_for_first_letter_rotation_method
    key_generator = KeyGenerator.new
    key = key_generator.key
    concatenated_key = key[0] + key[1]

    assert_equal concatenated_key.to_i, key_generator.first_letter_rotation
  end

  def test_for_second_letter_rotation_method
    key_generator = KeyGenerator.new
    key = key_generator.key
    concatenated_key = key[1] + key[2]

    assert_equal concatenated_key.to_i, key_generator.second_letter_rotation
  end

  def test_for_third_letter_rotation_method
    key_generator = KeyGenerator.new
    key = key_generator.key
    concatenated_key = key[2] + key[3]

    assert_equal concatenated_key.to_i, key_generator.third_letter_rotation
  end

  def test_for_fourth_letter_rotation_method
    key_generator = KeyGenerator.new
    key = key_generator.key
    concatenated_key = key[3] + key[4]

    assert_equal concatenated_key.to_i, key_generator.fourth_letter_rotation
  end
end
