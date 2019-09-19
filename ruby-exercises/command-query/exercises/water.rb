class Water
  attr_accessor :temperature
  def initialize
    @temperature = 295
  end
  def heat
    self.temperature += 1
  end

end
