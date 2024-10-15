class TripsController < ApplicationController
  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.save
  end


  private

  def trip_params
    params.require(:trip).permit(:name, :photo, :user_id)
  end
end
