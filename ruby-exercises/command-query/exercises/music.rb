class Music
  attr_accessor :loud
  def initialize
    @loud = false
  end
  def loud?
    loud
  end
  def turn_up
    self.loud = true
  end

end
