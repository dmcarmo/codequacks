class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
    # @bookings = Booking.where(user: current_user)
    
  end
end
