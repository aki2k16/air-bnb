class ReviewsController < ApplicationController

  def new
    @room = Room.includes(:user).find(params[:room_id])
    @review = Review.new
  end

  def create
    @room = Room.find(params[:room_id])
    @review = current_user.reviews.create(review_params)
    redirect_to room_path(params[:room_id])
  end

  private
  def review_params
    params.require(:review).permit(:body).merge(room_id: params[:room_id])
  end
end
