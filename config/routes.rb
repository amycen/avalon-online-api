Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :games, only: [:index, :show, :create]
  resources :messages, only: [:create]


  mount ActionCable.server => '/cable'

  post "/signup", to: "users#create"
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  get '/get_roles/:playerNum', to: 'roles#get_roles'
end

