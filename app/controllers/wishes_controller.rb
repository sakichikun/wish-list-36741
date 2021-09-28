class WishesController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy, :show]
  before_action :move_to_index, except: :index

  def index
    @wishes = Wish.includes(:user).order("created_at DESC")
  end

  def new
    @wish = Wish.new
  end

  def create
    @wish = Wish.new(wish_params)
    if @wish.valid?
      @wish.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @wish.destroy
    redirect_to root_path
  end

  def edit
    unless user_signed_in? && current_user.id == @wish.user_id
      redirect_to action: :index
    end
  end

  def update
    @wish.update(wish_params)
    if @wish.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @comment = Comment.new
    @comments = @wish.comments.includes(:user).order("created_at DESC")
  end

  def search
    @wishes = Wish.search(params[:keyword])
  end

  private
  def wish_params
    params.require(:wish).permit(:title,:state_id).merge(user_id: current_user.id)
  end

  def set_item
    @wish = Wish.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
