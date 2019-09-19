class Floor
  attr_accessor :dirty

  def initialize
    @dirty = true
  end

  def dirty?
    dirty
  end

  def wash
    self.dirty = false 
  end

end
