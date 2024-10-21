class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing]

  def landing
  end

  def home
    @friends_trips = current_user.friends.flat_map(&:trips)
    raise
  end
end
