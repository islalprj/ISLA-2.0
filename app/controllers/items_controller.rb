class ItemsController < ApplicationController

  def toggle
    item=Item.find(params[:id])
    if item.on==true
      item.on=false
    else
      item.on=true
    end
    
    render json: item.save
  end

end
