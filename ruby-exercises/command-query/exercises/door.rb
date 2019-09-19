class Door

  attr_accessor :locked

  def initialize
    @locked = true
  end

  def locked?
    locked
  end
  def unlock
    self.locked = false
  end
end
