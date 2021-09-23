class WantsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy, :show]

  def index
    @wants = Want.all
  end

  def new
    @want = Want.new
  end

  def create
    @want = Want.new(want_params)
    if @want.valid?
      @want.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @want.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    @want.update(want_params)
    if @want.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
  end

  private
  def want_params
    params.require(:want).permit(:name, :title)
  end

  def set_item
    @want = Want.find(params[:id])
  end
end
