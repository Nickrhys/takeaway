require "takeaway"
require "dish"

describe Takeaway do
	
	let (:takeaway) {Takeaway.new(@menu)							 }
	let (:order) 	{double :order, total: 14, time_ordered: Time.now }

	context 'functionality' do

		it 'can be initialized with menu' do
			takeaway = Takeaway.new [:dish]
			expect(takeaway.menu).to eq [:dish]
		end	

		it 'has an empty orders container when created' do
			expect(takeaway.orders).to eq []	
		end

		it 'can add orders to the order container' do
			takeaway.add(order)
			expect(takeaway.orders).to eq [order]
		end

	end

	context 'taking an order' do

		it 'can take and order from a customer' do
			Nick = double :customer, name: "Nick"
			expect(takeaway.order_message(Nick, order)).to eq "Customer: Nick \n Total: 14 \n Your order will be delivered by #{Time.now.hour + 1 }: #{Time.now.min}"
		end
	end

end