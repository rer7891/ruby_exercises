class TrickOrTreater
  attr_accessor :costume, :empty, :bags, :candy, :candy_count
  def initialize(costume)
    @costume = costume.style
    @empty = true
    @bags = []
    @candy
    @candy_count = 0
  end
  def dressed_up_as
    costume
  end
  def empty?
      empty
  end
  def bag
    if self.bags.size == 0
      self.empty = true
    else self.bags.size >= 1
      self.empty = false
    end
  end
  def has_candy?
    if self.empty == true
      @candy = false
    else self.emtpy >= 1
      @candy = true
    end
  end
  def <<(type)
    self.bags << type
    self.candy_count = self.bags.count
  end
end

class Bag
  attr_accessor :empty, :count, :candies, :type
  def initialize
    @empty = true
    @count = 0
    @candies = []
    @type
  end
  def empty?
      if self.count >= 1
        self.empty = false
      else self.count == 0
        self.empty = true
      end

  end
  def <<(type)
    self.candies << type
    self.count = self.candies.count
  end
  def first
    self.candies.first
  end

  def contains?(contains)
      self.candies.first.type.include?(contains)
  end
end

class Costume
  attr_accessor :style
  def initialize(style)
    @style = style
  end
end


class Candy
  attr_accessor :type
  def initialize(type)
    @type = type
  end
end
