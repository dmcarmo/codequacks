class DucksController < ApplicationController
  def new
    @duck = Duck.new
  end

  def create
    @duck = Duck.new(duck_params)
    @duck.save
    redirect_to ducks_path(@duck)
  end

  private
  def duck_params
    params.require(:duck).permit(:name, :description, :price)
  end
end
