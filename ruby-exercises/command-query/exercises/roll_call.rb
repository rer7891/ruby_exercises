class RollCall
  attr_accessor :roll_call, :name
  def initialize
    @roll_call = []
    @name
  end
  def <<(name)
    self.roll_call << name
  end
  def longest_name
    self.roll_call.max_by(&:length)
  end

  end
