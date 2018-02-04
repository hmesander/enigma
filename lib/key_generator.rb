class KeyGenerator
  attr_reader :key,
              :first_letter_rotation,
              :second_letter_rotation,
              :third_letter_rotation,
              :fourth_letter_rotation

  def initialize
    @key = key
  end

  def new_key
    key = []
    5.times do
      key << rand(0..9)
    end
    @key = key.join
  end

  def first_letter_rotation
    @key[0..1].to_i
  end

  def second_letter_rotation
    @key[1..2].to_i
  end

  def third_letter_rotation
    @key[2..3].to_i
  end

  def fourth_letter_rotation
    @key[3..4].to_i
  end
end

key_generator = KeyGenerator.new
p key_generator.new_key
puts key_generator.first_letter_rotation
