class Food
  attr_reader :description, :gtinUpc, :brand, :ingredients

  def initialize(attr)
    @description = attr[:description]
    @gtinUpc = attr[:gtinUpc]
    @brand = attr[:brandOwner]
    @ingredients = attr[:ingredients]
  end

end
