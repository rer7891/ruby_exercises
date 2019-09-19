class MilkBottle
  attr_accessor :full
  def initialize
    @full = true
  end
  def full?
    full
  end
  def spill
    self.full = false
  end

end
