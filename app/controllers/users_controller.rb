class UsersController < ApplicationController
  before_action :move_to_index
  
  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @wishes = @user.wishes
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
