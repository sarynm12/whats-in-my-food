require 'rails_helper'

RSpec.describe 'food search' do
  it 'as a user, I can select a food from the drop down menu, get redirected to a foods index page, and see total number of items, foods that contains ingredients, and for each food, the appropriate attributes' do

    visit '/'

    fill_in :q, with: 'sweet potatoes'
    click_on 'Search'

    food = SearchFacade.new.find_foods('sweet potatoes')

    expect(current_path).to eq('/foods')
    expect(page).to have_content("Total Found: 50")
    expect(page).to have_content("Description: #{food.description}")
    expect(page).to have_content("UPC Code: #{food.gtinUpc}")
    expect(page).to have_content("Ingredients: #{food.ingredients}")
  end

end

# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
