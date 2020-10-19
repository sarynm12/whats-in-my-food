class SearchFacade

  def find_foods(food)
    json = FoodService.new.find_foods(food)[:foods].map do |food_data|
      Food.new(food_data)
    end
  end

end
