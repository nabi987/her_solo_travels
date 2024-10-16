class UsersController < ApplicationController
  def show

  end

  def profile
    @user = current_user
  end

end
