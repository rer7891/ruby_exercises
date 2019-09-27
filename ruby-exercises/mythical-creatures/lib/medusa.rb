class Medusa

  attr_accessor :name, :statue, :stare, :empty, :first_name

  def initialize(name)
    @name = name
    @statue = 0
    @empty = true
    @first_name
  end

  def statues
    statue
    self
  end
  def empty?
    if self.statue == 0
      self.empty = true
    else self.statue > 0
      self.empty = false
    end
  end

  def stare(victom)
    victom.stared_at
    self.statue = victom.stared
   puts self.name = victom.name
  end
  def first
    name
    self
  end

  def count
    statue
  end

end

class Person
  attr_accessor :name, :stared, :stoned

  def initialize(name)
    @name = name
    @stared = 0
    @stoned = false
  end
  def stared_at
    self.stared += 1
  end
  def stoned?
    if self.stared == 0
      self.stoned = false
    else self.stared >= 1
      self.stoned = true
    end 
  end
end

medusa = Medusa.new("Cassiopeia")
  victim = Person.new("Perseus")
