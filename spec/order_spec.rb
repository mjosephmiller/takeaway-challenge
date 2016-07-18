require './lib/order'
require './lib/messenger'

describe Order do
  let(:dish) {double :dish, price: 3}
  let(:menu) {double :menu, dishes: [dish]}
  let(:message) {double :message}


  it '#initializes an order with an empty array of ordered_items' do
    order = Order.new(menu)
    expect(order.ordered_items).to be_empty
  end

  it '#initializes an order and verified is set to false' do
    order = Order.new(menu)
    expect(order.verified).to eq false
  end

  it "#choose_dish" do
     order = Order.new(menu)
     order.choose_dish(dish)
     expect(order.ordered_items).to include dish
  end

   describe '#checkout' do

     it 'should sum the price of the order' do
       order =  Order.new(menu)
       order.choose_dish(dish)
       expect(order.checkout).to eq 3
      end
    end

    describe '#verify_order' do
      it 'should make verified true' do
        order =  Order.new(menu)
        allow(message).to receive(:send_message)
        order.verify_order(message)
        expect(order.verified).to be true
      end
       it 'should run messenger' do
         expect(message).to receive(:send_message).and_return(true)
         order = Order.new(menu)
         order.verify_order(message)
         end
       end
end
