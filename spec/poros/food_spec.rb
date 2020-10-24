require 'rails_helper'

RSpec.describe Food do
  it 'creates a food poro' do
    attr = {:fdcId=>478350,
    :description=>"SWEET POTATO",
    :dataType=>"Branded",
    :gtinUpc=>"085239389508",
    :publishedDate=>"2019-04-01",
    :brandOwner=>"Target Stores",
    :ingredients=>
     "WATER, WHEAT FLOUR, SWEET POTATO PUREE, POTATO STARCH, POTATO FLAKES (POTATOES, MONO AND DIGLYCERIDES OF FATTY ACIDS, NATURAL FLAVOR), RICE FLOUR, SUGAR, LACTIC ACID, SALT, POTASSIUM SORBATE (PRESERVATIVE), NATURAL FLAVOR."}

     food = Food.new(attr)

     expect(food).to be_a(Food)
     expect(food.description).to eq("SWEET POTATO")
     expect(food.gtinUpc).to eq("085239389508")
     expect(food.ingredients).to eq("WATER, WHEAT FLOUR, SWEET POTATO PUREE, POTATO STARCH, POTATO FLAKES (POTATOES, MONO AND DIGLYCERIDES OF FATTY ACIDS, NATURAL FLAVOR), RICE FLOUR, SUGAR, LACTIC ACID, SALT, POTASSIUM SORBATE (PRESERVATIVE), NATURAL FLAVOR.")
     expect(food.brand).to eq("Target Stores")
 end
end
