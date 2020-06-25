class BookingsController < ApplicationController



  def index
    @bookings = policy_scope(Booking)
    # @bookings = Booking.where(user: current_user)
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
    @booking.user = curent_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
