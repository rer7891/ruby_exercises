class Medusa

  attr_accessor :name, :statues, :stare

  def initialize(name)
    @name = name
    @statues = 0
    @stare = 0
  end

  def empty?
      statues
      self
  end

  def stare(victom)
    person.stared_at
  end

end

class Person
  attr_accessor :name, :stared_at

  def initialize(name)
    @name = name
    @stared_at = 0
  end
  def stared_at
    self.stared_at += 1
      medusa.statues += 1
  end
  def stoned?

  end
end

medusa = Medusa.new("Cassiopeia")
  victim = Person.new("Perseus")
