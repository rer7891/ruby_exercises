class Children
  attr_accessor :eldest, :child, :child_age, :names
  def initialize
    @child = []
    @eldest_child
    @child_age = []
    @names
  end
  def <<(child)
    self.child << child.name
    self.child_age << child.age
  end
  def eldest
    eldest_child = self.child_age.index(self.child_age.max)

   self.child.each do |name|
     if child.find_index(name) == eldest_child
        self.names = name.to_s
      end
   end
    self
  end
  def name
    names
  end
end
