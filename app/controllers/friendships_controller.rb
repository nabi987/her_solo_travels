class FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.all
    if params[:query].present?
      sql_subquery = "users.first_name ILIKE :query OR users.last_name ILIKE :query"
      @friendships = Friendship.joins(:requestee).where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @friendship = Friendship.find(params[:id])
    @message = Message.new
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
