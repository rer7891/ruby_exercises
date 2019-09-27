class Clearance
  attr_accessor :clearance
  def initialize
    @clearance = []
  end
  def best_deal
  end
  def <<(item)
    self.clearance << item
  end

end 
