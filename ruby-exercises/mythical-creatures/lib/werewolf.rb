class Werewolf
  attr_accessor :name, :location, :human, :wolf, :change_counter, :hungry

  def initialize(name, location = "default")
    self.name = name
    self.location = location
    @human = true
    @wolf = true
    @change_counter = 0
    @hungry
  end

  def human?
     if change_counter.odd?
       human = false
     else change_counter.even?
       human = true
     end
   end

  def change!
    self.change_counter += 1
  end

  def wolf?
    if change_counter.odd?
      wolf = true
      hungry = true
    else change_counter.even?
      wolf = false
      hungry = false
    end
  end

  def hungry?
    self.wolf?
  end
end
