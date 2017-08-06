Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get ':chan/logs/', to: 'channel#logs'

  root to: 'home#index'
  get "/auth/:provider/callback" => "session#create"
  get "/signout" => "session#destroy", :as => :signout

  resources :sessions
  resources :users

end
