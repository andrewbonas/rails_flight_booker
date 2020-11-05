class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.code, a.id]}
    @passenger_options = [[1],[2],[3],[4]]
    @date_options = Flight.all.map {|f| [f.date.strftime('%b %d, %y'), f.date]}.uniq
     if params[:search]
       @flights = Flight.where(
         departure_airport: params[:departure_airport],
         arrival_airport: params[:arrival_airport],
         date: params[:date]
       )
     end
  end
end
