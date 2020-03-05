module SmsTool
  account_sid = ENV['TWILIO_ACCOUNT_SID']
  auth_token = ENV['TWILIO_AUTH_TOKEN']

  @client = Twilio::REST::Client.new account_sid, auth_token

  def self.send_sms(number:, message:)
    @client.messages.create(
    from: ENV['TWILIO_PHONE_NUMBER'],
    to: "+3#{number}",
    body: "#{message}"
  )
  end
end

#SmsTool.send_sms(number: '3645711571', message: 'Look at me !')
