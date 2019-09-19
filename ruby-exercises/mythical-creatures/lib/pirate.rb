class Pirate
  attr_accessor :name, :job, :cursed, :heinous_act, :booty

  def initialize(name, job = "Scallywag")
    self.name = name
    self.job = job
    @booty = 0
    @cursed = false
    @heinous_act = 0

  end
  def cursed?
    cursed
    if heinous_act >= 3
       cursed = true
    end
  end
  def commit_heinous_act
    self.heinous_act += 1
  end
  def robbing_ships
    self.booty += 100
  end

end
