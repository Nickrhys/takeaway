class Order

	def initialize
		@items = []
	end

	attr_reader :items

	def add(item)
		@items << item
	end

	def item_total
    	# items.inject(0) { |cost, (item, price)| cost + price }
    	items.map { |item_object| item_object.total }.inject { |acc, element| acc + element }
	end
end