class WantsController < ApplicationController
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

  private
  def want_params
    params.require(:want).permit(:name, :title)
  end
end
