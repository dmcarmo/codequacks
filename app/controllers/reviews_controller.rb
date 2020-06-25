class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    @review.save
     authorize @review
    redirect_to duck_path(@review.booking.duck)
  end

private
  def review_params
    params.require(:review).permit(:content)
  end
end
