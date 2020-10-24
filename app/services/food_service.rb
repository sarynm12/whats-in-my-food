class FoodService

  def self.search(term)
    conn = Faraday.new('https://api.nal.usda.gov')
    response = conn.get('/fdc/v1/foods/search') do |req|
      req.params[:query] = term
      req.params[:api_key] = ENV['FOOD_API_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)
  end

end
