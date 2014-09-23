require 'order'
require 'dish'
require 'item'

describe Order do 

	# let(:burger) 	{double :burger, {:price => 4.5} 	}
	# let(:fries) 	{double :fries, {:price => 2.5}		}
	let(:item1)		{double :item, total: 4.5					}
	let(:item2)		{double :item, total: 6					}
	let(:order)  	{Order.new							}

	it 'will add line items to the order' do
		order.add(item1)
		order.add(item2)
		expect(order.items.count).to eq 2
	end

	it 'can calculate the total number of numerous items ordered' do
		order.add(item1)
		order.add(item2)
		expect(order.item_total).to eq 10.5
	end

end