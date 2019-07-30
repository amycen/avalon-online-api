Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :games, only: [:index, :show, :create]
  resources :messages, only: [:create]
  resources :game_roles, only: [:create]


  mount ActionCable.server => '/cable'


  get '/open_games', to: "games#open_games"
  get '/update_game_status/:game_id', to: "games#update_game_status"
  post "/signup", to: "users#create"
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  get '/get_roles/:playerNum', to: 'roles#get_roles'
  get '/game_roles/get_players/:game_id', to: 'game_roles#get_players'
end

