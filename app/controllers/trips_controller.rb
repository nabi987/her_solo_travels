class TripsController < ApplicationController
  def index
    @trip = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to @trip, notice: "This trip was successfully created"
    else
      render :new
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :photo)
  end
end
