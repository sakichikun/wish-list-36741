class LikesController < ApplicationController
  before_action :set_item

  def create
    Like.create(user_id: current_user.id, wish_id: params[:id])
  end

  def destroy
    Like.find_by(user_id: current_user.id, wish_id: params[:id]).destroy
  end

  def show
    @likes = @wish.likes.includes(:user)
  end

  private
  def like_params
    params.require(:like).merge(user_id: current_user.id, wish_id: params[:wish_id])
  end

  def set_item
    @wish = Wish.find(params[:id])
  end
end
