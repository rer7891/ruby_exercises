class Vampire

  attr_accessor :name, :pet, :thirsty

  def initialize(name, pet = "bat")
    self.name = name
    self.pet = pet
    @thirsty = true
  end

  def drink
   @thirsty = false
  end
  def thirsty?
    @thirsty
  end

end
