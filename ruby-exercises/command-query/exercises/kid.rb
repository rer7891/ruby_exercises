class Kid
  attr_accessor :grams_of_sugar_eaten, :hyperactive
  def initialize
    @grams_of_sugar_eaten = 0
    @hyperactive = false
  end
  def eat_candy
    self.grams_of_sugar_eaten += 5
  end
  def hyperactive?
     if grams_of_sugar_eaten < 60
       hyperactive
     else grams_of_sugar_eaten >= 60
      self.hyperactive = true
     end
  end
end
