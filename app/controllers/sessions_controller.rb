require 'mail'

class SessionsController < ApplicationController
  def create_gmail
    auth = "782978540307-5i0dq2vrbqb4vfjj1u46mb4alcmj46hl.apps.googleusercontent.com"
    @oauth2_token = auth.credentials.token
    @user_email = auth.info.email

    # imap_email = "656376713336-tdf280pnubl73mr1drk518odj6pos2f2@developer.gserviceaccount.com"
    imap = Net::IMAP.new('imap.gmail.com', 993, usessl = true, certs = nil, verify = false)
    imap.authenticate('XOAUTH2', @user_email, @oauth2_token)
    imap.examine('INBOX')
    @msgs = []
    # imap.search(["RECENT"]).each do |message_id|
    #   envelope = imap.fetch(message_id, "ENVELOPE")[0].attr["ENVELOPE"]
    #   @msgs << {from: envelope.from[0].name, subject: envelope.subject}
    #   puts "#{envelope.from[0].name}: \t#{envelope.subject}"
    # end

    count = 0
    imap.search(['SINCE', '1-Apr-2014']).each do |message_id|

        msg = imap.fetch(message_id,'RFC822')[0].attr['RFC822']
        mail = Mail.read_from_string msg
        @msgs << mail.subject

        break if @msgs.count >= 10

        # puts mail.subject
        # puts mail.text_part.body.to_s
        # puts mail.html_part.body.to_s
    end

    @messages_count = @msgs.count
  end
end
