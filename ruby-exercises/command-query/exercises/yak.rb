class Yak
  attr_accessor :hairy
  def initialize
    @hairy = true
  end
  def hairy?
    hairy
  end
  def shave
    self.hairy = false
  end

end
