class LocationsController < ApplicationController
  def index
    @location = Location.all
  end

  def show
    @location = Location.find(params[:id])
    @locations = Location.where(city: @location.city)
  end

  def new
    @location = Location.new
    @trip = Trip.find(params[:trip_id])
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @location = Location.new(location_params)
    @location.trip = @trip
    @location.trip.user = current_user
    if @location.save
      redirect_to trip_path(@trip)
    else
      render :_new, status: :unprocessable_entity
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :trip_image, :user_id)
  end

  def location_params
    params.require(:location).permit(:country, :city, :activites, :start_date, :end_date)
  end
end
