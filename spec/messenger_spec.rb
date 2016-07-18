require './lib/messenger.rb'

describe Messenger do

  it '#should respond to send_message' do
    expect(Messenger).to respond_to(:send_message)
  end


end
