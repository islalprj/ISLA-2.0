class HomeController < ApplicationController
  def index
    @items=Item.all.order(:id)
    # Gmail.new("klutch.nz.dev@gmail.com", "Holden93!") do |gmail|
    #   @emails=gmail.inbox.find(:unread)
    #   zzz=@emails.count
    #   @subjects=[1,2,3]
    #   @senders=[]
    #
    #   @senders<<"#{gmail.inbox.emails[zzz-1].sender.first[:name]} Sends: "
    #   @senders<<gmail.inbox.emails[zzz-1].subject
    #   @senders<<"-----------------------"
    #   @senders<<"#{gmail.inbox.emails[zzz-2].sender.first[:name]} Sends: "
    #   @senders<<gmail.inbox.emails[zzz-2].subject
    #   @senders<<"-----------------------"
    #   @senders<<"#{gmail.inbox.emails[zzz-3].sender.first[:name]} Sends: "
    #   @senders<<gmail.inbox.emails[zzz-3].subject
    #   @senders<<"-----------------------"
    #   @senders<<"#{gmail.inbox.emails[zzz-4].sender.first[:name]} Sends: "
    #   @senders<<gmail.inbox.emails[zzz-4].subject
    #   @senders<<"-----------------------"
    #   @senders<<"#{gmail.inbox.emails[zzz-5].sender.first[:name]} Sends: "
    #   @senders<<gmail.inbox.emails[zzz-5].subject
    #   @senders<<"-----------------------"
    #   @senders<<"#{gmail.inbox.emails[zzz-6].sender.first[:name]} Sends: "
    #   @senders<<gmail.inbox.emails[zzz-6].subject
    #   @senders<<"-----------------------"
    #   @senders<<"#{gmail.inbox.emails[zzz-7].sender.first[:name]} Sends: "
    #   @senders<<gmail.inbox.emails[zzz-7].subject


#  end


def control
  @items=Item.all.order(:id)
end




  # Gmail.new("klutch.nz.dev@gmail.com", "Holden93!") do |gmail|
  #   zzz=@emails.count
  #   zz=gmail.inbox.emails[zzz-1].sender.first[:name]
  #   @senders<<zz
  #   yy=gmail.inbox.emails[zzz-2].sender.first[:name]
  #   @senders<<yy
  #   xx=gmail.inbox.emails[zzz-3].sender.first[:name]
  #   @senders<<xx
  #   ww=gmail.inbox.emails[zzz-4].sender.first[:name]
  #   @senders<<ww
  #   vv=gmail.inbox.emails[zzz-5].sender.first[:name]
  #   @senders<<vv
  #
  #   end
end

#gmail.inbox.emails[0].body.decoded

def cams
end

def traffic
end
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

  def monitor
      @oauth = Koala::Facebook::OAuth.new('1421547268149102', '73fad9609562720c0709076fd27dcebd', 'https://islalprj.herokuapp.com/monitor')
      @graph = Koala::Facebook::API.new(@oauth)
  end
end
