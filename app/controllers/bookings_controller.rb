class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @passengers = params[:passengers].to_i
  end
end
