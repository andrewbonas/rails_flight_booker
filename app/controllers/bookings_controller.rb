class BookingsController < ApplicationController
  def index
  end

  def new
    @flight = Flight.find(params[:flight_id])
    @passenger_count = params[:passenger_count].to_i
    @booking = Booking.new(flight_id: @flight.id)
    @passenger_count.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      @booking.passengers.each do |p|
        PassengerMailer.with(booking: @booking, passenger: p).confirmation_email.deliver_now!
      end
      redirect_to @booking, notice: "Thanks for booking, email confirmation has been sent"
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email, :_destroy])
  end

end
