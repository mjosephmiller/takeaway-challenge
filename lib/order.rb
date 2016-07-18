require_relative 'menu'
require_relative 'messenger'

class Order

  attr_accessor :ordered_items
  attr_reader :menu, :verified


  def initialize(menu)
    @menu = menu
    @ordered_items = []
    @verified = false
  end

  def choose_dish(dish)
    if menu.dishes.include? dish
    ordered_items << dish
    end
  end

  def verify_order(messenger = Messenger.new)
    @verified = true
    messenger.send_message
  end

  def checkout
    total = 0
    ordered_items.each do |dish|
      total += dish.price
    end
    puts "mmm...great order: #{ordered_items}.\nHere's your total: £#{'%.02f' % total}. "
    total
  end

end
