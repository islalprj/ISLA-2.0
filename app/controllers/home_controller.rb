class HomeController < ApplicationController
  def index
    @items=Item.all.order(:id)

  end
  def control
    @items=Item.all.order(:id)
  end

  def emails
    Gmail.new("klutch.nz.dev@gmail.com", "Holden93!") do |gmail|
      @emails = gmail.inbox.find(:unread)
      # @senders = get_senders(gmail, @emails)
      @data = PopulateSenders.get_senders(gmail, @emails)
    end
    render json: {data:@data, length:@emails.length}
  end


  def cams
  end
  def traffic
  end
  def monitor
      @oauth = Koala::Facebook::OAuth.new('1421547268149102', '73fad9609562720c0709076fd27dcebd', 'https://islalprj.herokuapp.com/monitor')
      @graph = Koala::Facebook::API.new(@oauth)
  end
end
