class Item

	def initialize(dish, quantity = 1)
		@dish = dish
		@quantity = quantity
	end

attr_reader :dish, :quantity

	def multiple_dish
		dish + dish
	end

	def total
		dish.price * quantity
	end
end