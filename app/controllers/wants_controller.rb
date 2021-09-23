class WantsController < ApplicationController
  def index
    @wants = Want.all
  end

  def new
    @wants = Want.new
  end
end
