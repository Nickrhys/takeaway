require "takeaway"
require "dish"

describe Takeaway do
	
	let (:takeaway) {Takeaway.new(@menu)	}
	let (:order) 	{double :order 			}

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
end