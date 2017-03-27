class ReservationsController < ApplicationController
  def new
  #   @room = Room.find(params[:id])
  end

  def create
    @reservation = current_user.reservations.create(reservation_params)
    redirect_to room_path(current_user)
  end

  private
  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :guest).merge(room_id: params[:id])
  end
end
