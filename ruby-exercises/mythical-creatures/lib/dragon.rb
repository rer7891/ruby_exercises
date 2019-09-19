class Dragon
  attr_accessor :name, :color, :rider, :meal_count, :hunger

  def initialize(name, color, rider)
    self.name = name
    self.color = color
    self.rider = rider
    @hunger = true
    @meal_count = 0
  end

  def hungry?
    hunger
  end

  def eat
    self.meal_count += 1

    if self.meal_count == 3
      self.hunger = false
    end
  end

end
