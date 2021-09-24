class WishesController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy, :show]
  before_action :move_to_index, except: :index

  def index
    @wishes = Wish.all
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
  end

  private
  def wish_params
    params.require(:wish).permit(:name, :title).merge(user_id: current_user.id)
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
