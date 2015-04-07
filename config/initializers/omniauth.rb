OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2,
              "",
              "", {
                scope: 'https://mail.google.com/,https://www.googleapis.com/auth/userinfo.email'
              }
end
