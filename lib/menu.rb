require_relative 'dishes'
require_relative 'order'

class Menu

  attr_reader  :dishes

  def initialize
    @dishes = []
  end

  def add_item(dish)
    @dishes << dish
  end

  def print_menu
    @dishes.each do |dish|
    puts "#{dish.name}...£#{'%.02f' % dish.price}\n"
    end
  end

end
