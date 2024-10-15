class LocationsController < ApplicationController
  def index
    @location = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.user = current_user
    @trip = Trip.find(params[:id])
    if @location.save
      redirect_to trip_path(@trip)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def location_params
    params.require(:trip).permit(:name, :photo, :user_id)
  end
end
