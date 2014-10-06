require 'rubygems'          # This line not needed for ruby > 1.8
require 'twilio-ruby'

class Message


	def send_sms(customer, order)

	# Get your Account Sid and Auth Token from twilio.com/user/account
	account_sid = 'AC0f91ff9c76c2edf145f3e3b5db44ae98'
	auth_token = 'b59faceb0502fcf96b9f924be9e093b5'
	@client = Twilio::REST::Client.new account_sid, auth_token

	message = @client.account.messages.create(:body => "Customer: #{customer.name} \n Total: #{order.item_total} \n Your order will be delivered by #{order.time_ordered.hour + 1 }: #{order.time_ordered.min}",
	:to => "+447918883556",
	:from => "+442033897140")

	end

end