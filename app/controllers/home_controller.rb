class HomeController < ApplicationController

  def index
    @items=Item.all
  end

def control
  @items=Item.all
end

end
