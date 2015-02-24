Rails.application.config.middleware.use OmniAuth::Builder do
  provider :gplus, '637079548319-h6ejhsurn77502ijpkjd27itjp31lg15.apps.googleusercontent.com', '0UD0a9e1V30FJGA5xKtLjjaB',
    scope: 'openid,profile,email'
end