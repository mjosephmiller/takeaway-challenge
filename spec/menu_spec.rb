require './lib/menu'

describe Menu do
  subject(:menu) {described_class.new}

  describe '#initialize' do

    it 'checks there are 0 menu items' do
      expect(menu.dishes.count).to eq(0)
    end
  end

  describe '#add_item' do
    it 'adds the item to the menu' do
      dish = Dish.new('pizza', 3.00)
      menu.add_item(dish)
      expect(menu.dishes.count).to eq 1
    end
  end

  describe '#print_menu' do

    it 'prints the dishes and their prices' do
      dish = Dish.new('pizza', 3.00)
      menu.add_item(dish)
      expect(menu.print_menu).to include dish
    end
  end

end
