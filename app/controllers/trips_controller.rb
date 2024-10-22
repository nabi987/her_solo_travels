class TripsController < ApplicationController
  def show
    @trip = Trip.find(params[:id])
    @location = Location.new
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :photo, :image_url)
  end
end
