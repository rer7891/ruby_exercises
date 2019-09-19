class Unicorn

attr_accessor :name, :color

  def initialize(name, color = "white" )
    self.name = name
    self.color = color
  end

  def white?
    if color == "white"
       white = true
    else
       white = false
    end
  end

def say(comment)
  return "**;* #{comment} **;*"
end

end
