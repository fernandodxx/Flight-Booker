class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @dates = Flight.pluck(:start_datetime).map { |d| d.to_date }.uniq
    @flights = []

    if params[:departure_airport_id].present? && params[:arrival_airport_id].present? && params[:date].present?
      @flights = Flight.where(
        departure_airport_id: params[:departure_airport_id],
        arrival_airport_id: params[:arrival_airport_id],
        start_datetime: params[:date].to_date.all_day
      )
    end
  end
end
