require 'rails_helper'

RSpec.describe 'food search' do
  it 'as a user, I can select a food from the drop down menu, get redirected to a foods index page, and see total number of items, foods that contains ingredients, and for each food, the appropriate attributes' do

    visit '/'

    fill_in :q, with: 'sweet potato'
    click_on 'Search'

    food = SearchFacade.food_search('sweet potatoes')

    expect(current_path).to eq('/foods')
    expect(page).to have_css('.food', count: 10)

    within(first('.food')) do
      expect(page).to have_css('.upc')
      expect(page).to have_css('.description')
      expect(page).to have_css('.brand')
      expect(page).to have_css('.ingredients')
    end
  end
end
