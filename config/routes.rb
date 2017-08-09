Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # define a root path
  root to: 'home#index'

  # authentication paths
  get "/auth/:provider/callback" => "session#create"
  get "/signout" => "session#destroy", :as => :signout

  # channel paths
  get '/:channel/logs/', to: 'logs#show'
  #get '/:channel/songlist', to: 'songrequests#show'
  #get '/:channel/player', to: 'songrequests#player'

  # resources
  resources :sessions
  resources :users

end
