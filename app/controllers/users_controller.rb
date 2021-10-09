class UsersController < ApplicationController
  before_action :move_to_index
  
  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @wishes = @user.wishes
  end

  def edit
    @user = User.find(params[:id])
    #@nickname = @user.nickname
    #@introduction = @user.introduction
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params_update)
      redirect_to "/users/#{@user.id}"
    else
      render :edit
    end
  end

  private
  def user_params_update
    params.require(:user).permit(:nickname, :introduction, :email)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
