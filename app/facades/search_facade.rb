class SearchFacade

  def self.food_search(term)
    data = FoodService.search(term)

    @foods = data[:foods].first(10).map do |food_attrs|
      Food.new(food_attrs)
    end
  end

end
