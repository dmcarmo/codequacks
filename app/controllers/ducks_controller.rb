class DucksController < ApplicationController
  # include Pundit

  skip_before_action :authenticate_user!, only: [:index]
  skip_after_action :verify_authorized, only: [:index]
  before_action :set_duck, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :destroy]

  def index
    @ducks = policy_scope(Duck).order(name: :asc)
    if params[:search].present?
      @ducks = Duck.global_search(params[:search])
    end
  end

  def show
    authorize @duck
    @review = Review.new
    # @booking = Booking.find_by(user: current_user, duck: @duck)
  end

  def new
    @duck = Duck.new
    authorize @duck
  end

  def create
    @duck = Duck.new(duck_params)
    @duck.user = current_user
    authorize @duck
    if @duck.save
      redirect_to ducks_path
    else
      render :new
    end
  end

  def edit
    authorize @duck
  end

  def update
    authorize @duck
    if @duck.update(duck_params)
      redirect_to ducks_path
    else
      render :edit
    end
  end

  def destroy
    @duck = @duck.destroy
    authorize @duck
    redirect_to ducks_path
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :description, :price, :photo)
  end

  def correct_user
    redirect_to ducks_path, notice: "Not authorized" if @duck.user != current_user
  end

  def set_duck
    @duck = Duck.find(params[:id])
  end
end
