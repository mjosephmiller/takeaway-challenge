require './lib/dishes.rb'

describe Dish do

  it 'creates a dish with a name and price' do
    dish = Dish.new('pizza', 8.00)
    expect(dish.name).to eq 'pizza'
    expect(dish.price).to eq 8
  end

end
