require_relative 'offset'
require_relative 'key_generator'

class Encryptor

def final_a_rotaiton_value
  offset.first_a_rotation + key_generator.first_letter_rotation

end
end

encryptor = Encryptor.new
puts encryptor.final_a_rotaiton_value
