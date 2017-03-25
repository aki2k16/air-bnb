class RoomsController < ApplicationController

  def new
    @room = Room.new
  end

  def create
    @room = Room.new
    @room = current_user.rooms.create(room_params)
  end

  def show
    @room = Room.find(params[:id])
    @reviews = @room.reviews
    @reservation = Reservation.new
  end

  def search
    @rooms = Room.where('prefecture LIKE(?)', "%#{params[:keyword]}%").limit(1)
  end

  private
  def room_params
    params.require(:room).permit(:title, :prefecture, :price, :bed, :bedroom, :listing, :image, :guest, :address)
  end
end
