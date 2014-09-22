require "menu"

describe Menu do

		let(:menu)	{ Menu.new } 

	it 'should show an array of dishes and prices' do
		burger = double :dish, name: "Burger", price: 4.5
		fries = double :dish, name: "Fries", price: 2.5
		menu.add(burger)
		menu.add(fries)
		expect(menu.list).to eq [burger, fries]
	end

	it 'should allow customers to choose from the menu' do
		burger = double :dish, name: "Burger", price: 4.5
		menu.add(burger)
		expect(menu.choose("Burger")).to eq burger
	end	
end