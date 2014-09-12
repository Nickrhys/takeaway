require 'dish'

	describe Dish do

let(:dish) {Dish.new('Burger', 4.5)}

		context 'name and prices' do 

		it 'should have a name' do
			expect(dish.name).to eq "Burger"
		end

		it 'should have a price' do
			expect(dish.price).to eq 4.5

		end	


	end

end 