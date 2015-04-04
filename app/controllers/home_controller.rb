class HomeController < ApplicationController

  def index
    @items=Item.all.order(:id)
  end

def control
  @items=Item.all.order(:id)
end

def monitor
end


end
