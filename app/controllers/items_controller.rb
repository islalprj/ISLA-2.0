class ItemsController < ApplicationController

  def toggle
    item=Item.find(params[:id])
    if item.on==true
      item.on=false
      item.save
    else
      item.on=true
      item.save
    end
    
    render json: item.save
  end

end
