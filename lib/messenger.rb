require 'rubygems'
require 'twilio-ruby'
require 'dotenv'
Dotenv.load

class Messenger
  def self.send_message

  (account_sid = ENV['TWILIO_ACCOUNT_SID'])
  (auth_token = ENV['TWILIO_AUTH_TOKEN'])

  @client = Twilio::REST::Client.new account_sid, auth_token

  @client.account.messages.create({
   :from => ENV['TWILIO_NO'],
   :to => ENV['MY_NO'],
   :body => 'Your order will be with you shortly.',
  })

  end

end
