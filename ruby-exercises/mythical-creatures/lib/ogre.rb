class Ogre

  attr_reader :name, :home
  attr_accessor :swings, :encounter_counter

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def name
    @name
  end
  def home
    @home
  end

  def encounter(human)
    human.encounter += 1
    self.swing_at(human) if human.notices_ogre?
    self.encounter_counter += 1
  end
  def swing_at(human)
      self.swings += 1
      human.knocked_out = true if swings.even?
  end
  def apologize(human)
    human.knocked_out = false
  end
end


class Human

  attr_reader :name
  attr_accessor :encounter, :knocked_out

  def name
    @name
  end

  def initialize(name = "Jane")
    @name = name
    @encounter = 0
    @knocked_out = false
  end
  def encounter_counter
    encounter
  end
  def notices_ogre?
    self.encounter % 3 == 0
  end
  def knocked_out?
    @knocked_out
  end

end
