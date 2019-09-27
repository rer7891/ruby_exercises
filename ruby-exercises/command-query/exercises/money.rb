class Money
  attr_accessor :amount
  def initialize
    @amount = 0
  end
  def earn(earnings)
    self.amount += earnings
  end
  def spend(spending)
    if self.amount == 0
       p "You can't spend what you don't have"
    else self.amount != 0
      self.amount -= spending
    end

  end
end
