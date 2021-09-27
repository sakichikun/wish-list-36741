class LikesController < ApplicationController
  before_action :set_item
  before_action :move_to_index

  def create
    Like.create(user_id: current_user.id, wish_id: params[:id])
  end

  def destroy
    Like.find_by(user_id: current_user.id, wish_id: params[:id]).destroy
  end

  def show
    @likes = @wish.likes.includes(:user)
    unless user_signed_in? && current_user.id == @wish.user_id
      redirect_to root_path
    end
  end

  private
  def like_params
    params.require(:like).merge(user_id: current_user.id, wish_id: params[:wish_id])
  end

  def set_item
    @wish = Wish.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
