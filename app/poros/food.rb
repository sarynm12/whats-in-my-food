class Food
  attr_reader :description, :gtinUpc, :ingredients

  def initialize(attributes)
    @description = attributes[:description]
    @gtinUpc = attributes[:gtinUpc]
    @ingredients = attributes[:ingredients]
  end

end
