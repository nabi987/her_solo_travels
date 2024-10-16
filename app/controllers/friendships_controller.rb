class FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.all
    return unless params[:query].present?

    sql_subquery = "first_name ILIKE :query OR last_name ILIKE :query"
    @users = @user.where(sql_subquery, query: "%#{params[:query]}%")
  end

  def show
  end

  def create
    @friendship = Friendship.create(friendship_params)
    @friendship.requester = current_user
    if @friendship.save
      redirect_to user_path(@friendship.requestee)
    else
      render :new
    end
  end

  def update
  end

  private

  def friendship_params
    params.require(:friendship).permit(:requestee_id)
  end
end
