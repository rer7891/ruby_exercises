class Teenager
  attr_accessor :drunk
  def initialize
    @drunk = false
  end
  def drunk?
    drunk
  end
  def consume_an_alcoholic_beverage
    self.drunk = true
  end
end
