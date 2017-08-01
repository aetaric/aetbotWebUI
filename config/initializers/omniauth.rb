Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :developer unless Rails.env.production?
  provider :twitchtv, ENV["TWITCH_CLIENT_ID"], ENV["TWITCH_CLIENT_SECRET"],scope: 'user_read channel_editor communities_edit '
end
