# require "takeaway"
# require "dish"

# describe Takeaway do
	
# 	let (:takeaway) {Takeaway.new}

# 	context 'functionality' do

# 		it 'has an empty menu' do
# 			expect(takeaway.menu).to be_empty
# 		end

# 		it 'can be initialized with menu' do
# 			takeaway = Takeaway.new [:dish]
# 			expect(takeaway.menu).to eq [:dish]
# 		end	

# 		it 'can list the dishes and prices in menu' do
# 			burger = Dish.new 'Burger', 4.5
# 			fries = Dish.new 'Fries', 2.5
# 			takeaway = Takeaway.new [burger, fries]
# 			expect(takeaway.show_menu). to eq [ "Burger (4.5)", "Fries (2.5)"]
# 		end
# 	end
# end