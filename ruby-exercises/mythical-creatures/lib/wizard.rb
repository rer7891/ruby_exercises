class Wizard
  attr_accessor :name, :bearded, :rested, :spells, :cast


  def initialize(name, bearded = true)
    self.name = name
    self.bearded = bearded
    @rested = true
    @spells = 0
    @cast = "MAGIG MISSILE"
  end
  def bearded?
    bearded
  end
  def incantation(chant)
     "sudo #{chant}"
  end
  def rested?
    if @spells >= 3
      @rested = false
    else
      @rested = true
    end
  end

  def cast
    @spells += 1
    return @cast
  end

end
