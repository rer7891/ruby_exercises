attr_accessor :name, :location, :human, :wolf, :form, :hunger, :consume, :status

def initialize(name, location = "default")
  self.name = name
  self.location = location
  @human = true
  @form = 0
  @hunger = false
  @consume = Victom.new
  @status = true
end

def human?
  @human
end
def change!
  @form += 1
  if @form % 2 != 0 #1, 3, 5 = not human
    @human = false
  else @form % 2 == 0 #2, 4, 6 = humnan
    @human = true
  end
end
def wolf?
  if @human == true
    @wolf = false
  elsif @human == false
    @wolf = true
  end
end
def hungry?

  if @human == true
    @hunger = false
  else @human == false
    @hunger = true
  end
end
def consumes_victom
  @consume.status
end
end 
