class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def confirmation_email
    @flight = params[:flight]
    @booking = params[:booking]
    @passenger = params[:passenger]
    @url = 'https://google.com'
    mail(to: @passenger.email, subject: "BA flight confirmation")
  end
end
