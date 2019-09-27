class Appointments
  attr_accessor :earliest
  def initialize
    @earliest = []
  end
  def earliest
  end
  def at(t1)
  end
end

class Time
  attr_accessor :year, :month, :day, :hour, :min
  def initialize(year, month, day, hour, min)
    @year = year
    @month = month
    @day = day
    @hour = hour
    @min = min
  end
end
