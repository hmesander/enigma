require_relative 'keygenerator'
require 'minitest/autorun'
require 'minitest/pride'

class KeyGeneratorTest < Minitest::Test
  def test_that_key_generator_class_exists
    key_generator = KeyGenerator.new

    assert_instance_of KeyGenerator, key_generator
  end

  def test_that_key_generated_is_a_string
    key_generator = KeyGenerator.new

    assert_instance_of String, key_generator.new_key
  end

  def test_that_key_generated_is_five_digits
    key_generator = KeyGenerator.new

    assert_equal 5, key_generator.new_key.length
  end

  def test_for_first_letter_rotation_method
    key_generator = KeyGenerator.new
    key_generator.new_key
    concatenated_key = (key_generator.key[0] + key_generator.key[1]).to_i

    assert_equal concatenated_key, key_generator.first_letter_rotation
  end

  def test_for_second_letter_rotation_method
    key_generator = KeyGenerator.new
    key_generator.new_key
    concatenated_key = (key_generator.key[1] + key_generator.key[2]).to_i

    assert_equal concatenated_key, key_generator.second_letter_rotation
  end

  def test_for_third_letter_rotation_method
    key_generator = KeyGenerator.new
    key_generator.new_key
    concatenated_key = (key_generator.key[2] + key_generator.key[3]).to_i

    assert_equal concatenated_key, key_generator.third_letter_rotation
  end

  def test_for_fourth_letter_rotation_method
    key_generator = KeyGenerator.new
    key_generator.new_key
    concatenated_key = (key_generator.key[3] + key_generator.key[4]).to_i

    assert_equal concatenated_key, key_generator.fourth_letter_rotation
  end
end
