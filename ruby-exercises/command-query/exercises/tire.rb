class Tire
  attr_accessor :blow_outs

  def initialize
    @blow_outs = false
  end

  def flat?
    blow_outs
  end

  def blow_out
    self.blow_outs = true
  end

end
