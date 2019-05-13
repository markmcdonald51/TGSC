OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.credentials.facebook_api_key,
                      Rails.application.credentials.facebook_api_secret,
    scope: 'email,user_birthday,read_stream', display: 'popup'
end
