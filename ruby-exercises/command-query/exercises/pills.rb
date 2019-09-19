class Pills

  attr_accessor :counts

  def initialize
    @counts =*(1..60)
  end
  def count
    self.counts.count
  end
  def pop
    self.counts.pop
  end
end
