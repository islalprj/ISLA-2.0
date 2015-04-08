require 'mail'

class SessionsController < ApplicationController
  def create_gmail
    # auth = "782978540307-5i0dq2vrbqb4vfjj1u46mb4alcmj46hl.apps.googleusercontent.com"
    # @oauth2_token = auth.credentials.token
    # @user_email = auth.info.email
    # imap = Net::IMAP.new('imap.gmail.com', 993, usessl = true, certs = nil, verify = false)
    # imap.authenticate('XOAUTH2', @user_email, @oauth2_token)
    # imap.examine('INBOX')
    # @msgs = []
    # count = 0
    # imap.search(['SINCE', '1-Apr-2014']).each do |message_id|
    #     msg = imap.fetch(message_id,'RFC822')[0].attr['RFC822']
    #     mail = Mail.read_from_string msg
    #     @msgs << mail.subject
    #     break if @msgs.count >= 10
    # end
    # @messages_count = @msgs.count
  end
end
