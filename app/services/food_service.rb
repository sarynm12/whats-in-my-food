class FoodService

  def conn
    conn = Faraday.new('https://api.nal.usda.gov/fdc/v1')
  end

  def find_foods(food)
    response = conn.get("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{food}&api_key=#{ENV['FOOD_API_KEY']}")

    parsed = JSON.parse(response.body, symbolize_names: true)
  end

end
