class Wallet

  attr_accessor :wallet, :money, :cents

  def initialize
    @wallet = [@cents]
    @money = {:penny => 1, :nickel => 5, :dime => 10}
    @cents = 0
  end
  def <<(money)
    self.wallet << money
    self.cents += money 

  end
end
