require 'rails_helper'

RSpec.describe FoodService do
  it 'can consume an API' do
    search_term = 'sweet potato'

    results = FoodService.search(search_term)

    expect(results).to have_key(:totalHits)
    expect(results).to have_key(:currentPage)
    expect(results[:currentPage]).to eq(1)
    expect(results).to have_key(:foods)
    expect(results[:foods]).to be_an(Array)

    foods = results[:foods]

    expect(foods.length).to eq(50)

    first_food = foods[0]

    expect(first_food).to have_key(:gtinUpc)
    expect(first_food[:gtinUpc]).to be_a(String)
    expect(first_food).to have_key(:description)
    expect(first_food[:description]).to be_a(String)
    expect(first_food).to have_key(:brandOwner)
    expect(first_food[:brandOwner]).to be_a(String)
    expect(first_food).to have_key(:ingredients)
    expect(first_food[:ingredients]).to be_a(String)
  end

end
