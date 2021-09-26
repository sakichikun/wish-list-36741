class LikesController < ApplicationController
  before_action :set_item

  def create
    Like.create(user_id: current_user.id, wish_id: params[:id])
  end

  def destroy
    Like.find_by(user_id: current_user.id, wish_id: params[:id]).destroy
  end

  private

  def set_item
    @wish = Wish.find(params[:id])
  end
end
