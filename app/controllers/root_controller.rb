class RootController < ApplicationController

  def index
    @rooms = Room.limit(3).order("created_at DESC")
  end
end
