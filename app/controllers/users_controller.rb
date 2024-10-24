class UsersController < ApplicationController
  def show
    @friendship = Friendship.new
    @user = User.find(params[:id])
    # @is_friend = checking whether friendship is created regardless of status
    @is_friend = Friendship.find_by(requestee: current_user, requester: @user) || Friendship.find_by(
      requestee: @user, requester: current_user
    )

  end

  def profile
    @user = current_user
    redirect_to new_session_path, alert: "You need to log in." unless @user
    @friendships = Friendship.where(status:"pending", requestee: current_user)
  end


end
