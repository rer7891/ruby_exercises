class Santa
  attr_accessor :fits, :eats
  def initialize
    @fits = true
    @eats = 0
  end
  def fits?
    if self.eats < 3
      fits
    else self.eats >= 3
      self.fits = false
    end 
  end
  def eats_cookies
    self.eats += 1
  end
end
