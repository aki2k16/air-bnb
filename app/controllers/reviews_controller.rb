class ReviewsController < ApplicationController

  def new
    @room = Room.includes(:user).find(params[:room_id])
    @review = Review.new
  end

  def create
    @room = Room.find(params[:room_id])
    @review = current_user.reviews.create(review_params)
    redirect_to @room, flash: {notice: 'メッセージを投稿しました'}
  end

  def destroy
    review = Review.find(params[:id])
    if review.user_id == current_user.id
      review.destroy
      redirect_to :back, flash: {notice: 'メッセージを削除しました'}
    end
  end

  private
  def review_params
    params.require(:review).permit(:body).merge(room_id: params[:room_id])
  end
end
