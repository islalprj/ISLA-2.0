class PopulateSenders

    def get_senders(gmail, emails)
      collect_senders(gmail, emails.count)
    end

    def collect_senders(gmail, email_count)
      senders = []
      5.times do |index|
        senders += add_sender(gmail, email_count, index + 1)
      end
      senders
    end
    def add_sender(gmail, email_count, number)
      [
        "#{gmail.inbox.emails[email_count-number].sender.first[:name]} Sends: ",
        gmail.inbox.emails[email_count-number].subject,
        "-----------------------"
      ]
    end
end
