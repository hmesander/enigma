require 'Date'
class Offset

  def date
    current_date = Date.today.strftime('%d%m%y')
    current_date.to_i
  end

  def squared_date
    date**2
  end
end
