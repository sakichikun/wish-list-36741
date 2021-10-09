class LikesController < ApplicationController
  before_action :set_item, except: :index
  before_action :move_to_index


  def index
    @all_ranks = Wish.find(Like.group(:wish_id).order('count(wish_id)desc').limit(3).pluck(:wish_id))
  end

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
