
require 'customer'

describe Customer do 

	let(:customer) {Customer.new('Nick', "07918883556")}

		it 'has a name' do
			expect(customer.name).to eq 'Nick'
		end

		it 'has a phone number' do
			expect(customer.number).to eq "07918883556"
		end

end