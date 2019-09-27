class Catalogue
  attr_accessor :items, :cost, :cheap_cost
  def initialize
    @items = []
    @cost = []
    @cheap_cost
  end


  def <<(product)
   self.items << product.product
  self.cost << product.cost
  end

  def cheapest
  cheap_cost = self.cost.index(self.cost.min)

     self.items.each do |item|
       if items.find_index(item) == cheap_cost
          return item.to_s
        end
     end
  return cheap_cost  
  end

end
