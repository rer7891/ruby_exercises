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

class Candy
  attr_accessor :type
  def initialize(type)
    @type = type
  end
end

# bag.candies = ["Hershey's Kisses"]
# first = accesses first element of the array
