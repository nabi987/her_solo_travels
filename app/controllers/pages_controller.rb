class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing]

  def landing
  end

  def home
    @friends_trips = current_user.friends.flat_map(&:trips)
    @friendship = Friendship.find_by(requestee: current_user, requester: @friend) || Friendship.find_by(
      requestee: @friend, requester: current_user)
  end
end
