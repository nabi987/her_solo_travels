class FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.all
    if params[:query].present?
      sql_subquery = "first_name ILIKE :query OR last_name ILIKE :query"
      @users = @user.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
  end

  def create
  end

  def update
  end
end
