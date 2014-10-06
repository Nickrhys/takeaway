class Takeaway
require_relative 'message' 

	attr_reader :menu
	attr_accessor :orders

	def initialize(menu)
		@menu = menu	
		@orders ||= []	
	end

	def add(order)
		orders << order
	end

	def order_message(customer, order)
		Message.new.send_sms(customer, order)
		"Customer: #{customer.name} \n Total: #{order.item_total} \n Your order will be delivered by #{order.time_ordered.hour + 1 }: #{order.time_ordered.min}"
	end

end