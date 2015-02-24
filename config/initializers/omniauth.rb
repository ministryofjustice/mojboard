Rails.application.config.middleware.use OmniAuth::Builder do
  provider :gplus, 'GPLUS_CLIENT_ID', 'GPLUS_CLIENT_SECRET',
    scope: 'openid,profile,email'
end