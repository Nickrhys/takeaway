require "item"

describe Item do

let (:item) {Item.new(:dish, 1)}



	it 'is initialized with a dish' do
		expect(item.dish).to eq :dish
	end

	it 'is initialized with one dish' do
		expect(item.quantity). to eq (1)
	end

	it 'can have a number of dishes' do
		item = Item.new(:dish, 3)
		expect(item.quantity).to eq (3)
	end

	it 'can calculate total cost of dishes' do
		dish = double :dish, price: 4.5
		item = Item.new(dish, 3)
		expect(item.total).to eq 13.5
	end
end