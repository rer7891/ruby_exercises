class Adult
  attr_accessor :sober, :drink
  def initialize
    @sober = true
    @drink = 0
  end
  def sober?
    if drink < 3
      sober
    else drink >= 3
      self.sober = false
    end 
  end
  def consume_an_alcoholic_beverage
    self.drink += 1
  end

end
