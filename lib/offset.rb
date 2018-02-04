require 'Date'
class Offset
  attr_reader :first_a_rotation,
              :second_b_rotation,
              :third_c_rotation,
              :fourth_d_rotation
  # :a, :b, :c, :d

  # def initialize
  #   @a = []
  #   @b = []
  #   @c = []
  #   @d = []
  # end

  def date
    current_date = Date.today.strftime('%d%m%y')
    current_date.to_i
  end

  def squared_date
     (date**2).to_s
  end

  # def last_four_digits
  #   @a << squared_date[-4].to_i
  #   @b << squared_date[-3].to_i
  #   @c << squared_date[-2].to_i
  #   @d << squared_date[-1].to_i
  # end

  def first_a_rotation
    squared_date[-4].to_i
  end

  def second_b_rotation
    squared_date[-3].to_i
  end

  def third_c_rotation
    squared_date[-2].to_i
  end

  def fourth_d_rotation
    squared_date[-1].to_i
  end
end
