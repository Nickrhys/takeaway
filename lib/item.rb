class Item

	def initialize(dish, quantity)
		@dish = dish
		@quantity = quantity
	end

attr_reader :dish, :quantity

	def total
		dish.price * quantity
	end
end