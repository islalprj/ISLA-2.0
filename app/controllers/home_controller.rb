class HomeController < ApplicationController
  def index
    @items=Item.all.order(:id)
    Gmail.new("klutch.nz.dev@gmail.com", "Holden93!") do |gmail|
      @emails=gmail.inbox.find(:unread)
      zzz=@emails.count
      @subjects=[1,2,3]
      @senders=[]

      @senders<<"#{gmail.inbox.emails[zzz-1].sender.first[:name]} Sends: "
      @senders<<gmail.inbox.emails[zzz-1].subject
      @senders<<"-----------------------"
      @senders<<"#{gmail.inbox.emails[zzz-2].sender.first[:name]} Sends: "
      @senders<<gmail.inbox.emails[zzz-2].subject
      @senders<<"-----------------------"
      @senders<<"#{gmail.inbox.emails[zzz-3].sender.first[:name]} Sends: "
      @senders<<gmail.inbox.emails[zzz-3].subject
      @senders<<"-----------------------"
      @senders<<"#{gmail.inbox.emails[zzz-4].sender.first[:name]} Sends: "
      @senders<<gmail.inbox.emails[zzz-4].subject
      @senders<<"-----------------------"
      @senders<<"#{gmail.inbox.emails[zzz-5].sender.first[:name]} Sends: "
      @senders<<gmail.inbox.emails[zzz-5].subject
    end
  end
  def control
    @items=Item.all.order(:id)
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
