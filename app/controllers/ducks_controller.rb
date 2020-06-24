class DucksController < ApplicationController

  # include Pundit

  skip_before_action :authenticate_user!, only: [:index]
  skip_after_action :verify_authorized, only: [:index]

  def index
    @ducks = policy_scope(Duck).order(name: :asc)
  end

  def show
    @duck = Duck.find(params[:id])
    authorize @duck
  end

  def new
    @duck = Duck.new
    authorize @duck
  end

  def create
    @duck = Duck.new(duck_params)
    @duck.save
    authorize @duck
    redirect_to ducks_path(@duck)
  end

  private
  def duck_params
    params.require(:duck).permit(:name, :description, :price)
  end
end
