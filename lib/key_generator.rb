class KeyGenerator
  attr_reader :key

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

end

key_generator = KeyGenerator.new
p key_generator.new_key
