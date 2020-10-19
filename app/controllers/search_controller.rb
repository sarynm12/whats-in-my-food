class SearchController < ApplicationController

  def index
    food = params[:id]

    conn = Faraday.new('https://api.nal.usda.gov/fdc/v1')
    #response = conn.get("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{food}?api_key=L4khwR3DdC4r3kflGRGd2lp7Z6thAl4ZzEoaIdHz")
    response = conn.get('https://api.nal.usda.gov/fdc/v1/foods/search?query=sweet potatoes&api_key=L4khwR3DdC4r3kflGRGd2lp7Z6thAl4ZzEoaIdHz')
    parsed = JSON.parse(response.body, symbolize_names: true)
     
    require "pry"; binding.pry
  end

end
