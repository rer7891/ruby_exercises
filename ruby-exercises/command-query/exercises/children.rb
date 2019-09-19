class Children
  attr_accessor :eldest, :child
  def initialize
    @child = []
    @eldest
  end
  def <<(child)
    self.child << child
  end
  def eldest

  end
end

class Child
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end

end
