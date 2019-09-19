class Hobbit

  attr_accessor :name, :disposition, :age, :minor, :adult, :old, :ring, :short

  def initialize(name, disposition = "homebody", age = 0)
    self.name = name
    self.disposition = disposition
    self.age = age
    @minor = false
    @adult = true
    @old = true
    @ring = true
    @short = true

  end
  def celebrate_birthday
    self.age += 1
  end

  def adult?
    if age <= 32
      minor
    else age > 32
      adult
    end
  end
  def old?
    if age > 100
       old
    end
  end
  def has_ring?
    if name == "Frodo"
       ring
    else name == "Sam"
       ring = false
    end
  end
  def is_short?
     short
  end
end
