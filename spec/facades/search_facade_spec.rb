require 'rails_helper'

RSpec.describe 'Search facade' do
  it 'should call the facadee and retrieve search results' do
    search_term = 'sweet potato'

    results = SearchFacade.food_search(search_term)

    expect(results).to be_an(Array)

    next_food = results.first

    expect(next_food).to be_a(Food)
    expect(next_food.gtinUpc).to eq("085239389508")
    expect(next_food.description).to eq("SWEET POTATO")
    expect(next_food.ingredients).to eq( "WATER, WHEAT FLOUR, SWEET POTATO PUREE, POTATO STARCH, POTATO FLAKES (POTATOES, MONO AND DIGLYCERIDES OF FATTY ACIDS, NATURAL FLAVOR), RICE FLOUR, SUGAR, LACTIC ACID, SALT, POTASSIUM SORBATE (PRESERVATIVE), NATURAL FLAVOR.")
    expect(next_food.brand).to eq("Target Stores")
  end

end
