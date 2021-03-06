Rails.application.routes.draw do

  root to: 'pages#home'
  get "/map", to: 'pages#map'

  get "/community", to: 'pages#community'

  # resources :pages, only: :create, as: "map"

  # post "/markers", to: 'pages#map'
  resources :markers, only: [:create, :index, :destroy]
  # resources :markers
  # get "markers/index"

  get '/signup' => 'users#new'
  # post '/users' => 'users#create'

  resources :users
  get '/comment' => 'users#comment'
  post '/users/:id' => 'users#update'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
