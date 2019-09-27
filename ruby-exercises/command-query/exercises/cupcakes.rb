class Cupcakes
  attr_accessor :cupcakes, :most_sweet, :sweetness, :flavors
  def initialize
    @cupcakes = []
    @sweetness = []
    @most_sweet
    @flavors
  end
  def <<(cupcake)
    self.cupcakes << cupcake.flavoring
    self.sweetness << cupcake.sweet_content
  end
  def sweetest
    self.most_sweet = self.sweetness.index(self.sweetness.max)
    self.cupcakes.each do |cupcake|
      if self.cupcakes.index(cupcake) == most_sweet
        self.flavors = cupcake.to_s
      end
    end
  self
  end
  def flavor
    flavors
  end
end
