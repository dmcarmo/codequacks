class DucksController < ApplicationController

  # include Pundit

  skip_before_action :authenticate_user!, only: [:index]
  skip_after_action :verify_authorized, only: [:index]

  def index
    @ducks = policy_scope(Duck).order(name: :asc)
  end

  def show
    @duck = Duck.find(params[:id])
  end

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
