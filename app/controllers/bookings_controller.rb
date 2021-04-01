class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]

  def index
    @bookings = policy_scope(Booking)
    @bookings = Booking.where(user: current_user)
  end

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
    @duck = Duck.find(params[:duck_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @duck = Duck.find(params[:duck_id])
    @booking.duck = @duck
    @booking.user = current_user
    authorize @booking
    if @duck.available?(@booking.start_date, @booking.end_date) && @booking.save
      redirect_to bookings_path, notice: "Thank you for booking #{@duck.name}"
    else
      redirect_to new_duck_booking_path(@duck), notice: "The dates you selected are no longer available"
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
