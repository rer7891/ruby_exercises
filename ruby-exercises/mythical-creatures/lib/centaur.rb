class Centaur
  attr_accessor :name, :breed, :cranky, :standing, :shot, :shoots, :runs, :no_shot, :no_run,
  :sleep, :laying, :rested

  def initialize(name, breed)
    self.name = name
    self.breed = breed
    @cranky = false
    @standing = true
    @shot = 0
    @shoots = "Twang!!!"
    @runs = "Clop clop clop clop!!!"
    @no_shot = "NO!"
    @no_run = "NO!"
    @rested = false
  end

  def shoot
    self.shot += 1
    self.cranky?
    if self.cranky == true || self.standing == false
      no_shot
    else shoots
    end
  end

  def lay_down
    self.standing = false

  end
  def stand_up
    self.standing = true
  end
  def laying?
    self.laying = true
  end
  def rested?
    rested
  end

  def sleep
    if self.standing == true
      self.sleep = "NO!"
    else self.sleep = "YES!"
      self.shot = 0
      self.cranky?
    end
  end

  def run
    self.cranky?
    if self.cranky == true || self.standing == false
       no_run
    else
      runs
    end
  end

  def cranky?
    if self.shot >=2
      self.cranky = true
    else self.cranky = false
    end
  end
  def standing?
     standing
  end
  def drink_potion
    self.standing = true
    self.rested = true
  end
end
