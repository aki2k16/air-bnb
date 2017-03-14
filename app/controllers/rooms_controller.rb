class RoomsController < ApplicationController

  def index
  end

  def show
    @room = Room.find(params[:id])
    @reviews = @room.reviews
    @reservation = Reservation.new
  end

  def search
    @rooms = Room.where('prefecture LIKE(?)', "%#{params[:keyword]}%").limit(1)
  end

end
