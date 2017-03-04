class RootController < ApplicationController

  def index
    @rooms = Room.limit(3)
  end

end
