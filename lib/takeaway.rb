class Takeaway

	attr_reader :menu
	attr_accessor :orders

	def initialize(menu)
		@menu = menu	
		@orders ||= []	
	end

	def add(order)
		orders << order
	end

end