class LeatherChair

  attr_accessor :exposed

  def initialize(exposed = false)
    @exposed = exposed
  end

  def faded?
      exposed
    end

  def expose_to_sunlight
    self.exposed = true
  end
end 
