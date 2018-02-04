require 'Date'
class Offset
  attr_reader :a, :b, :c, :d

  def initialize
    @a = []
    @b = []
    @c = []
    @d = []
  end

  def date
    current_date = Date.today.strftime('%d%m%y')
    current_date.to_i
  end

  def squared_date
     (date**2).to_s
  end

  def last_four_digits
    @a << squared_date[-4].to_i
    @b << squared_date[-3].to_i
    @c << squared_date[-2].to_i
    @d << squared_date[-1].to_i
  end
end
