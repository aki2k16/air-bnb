class RoomsController < ApplicationController

  def index
  end

  def show
    @room = Room.find(params[:id])
    @reviews = @room.reviews
    @reservation = Reservation.new
  end

end
