Rails.application.routes.draw do
  root 'pages#index'

  resources :movies, param: :slug
  resources :reviews
  resources :users 
  resources :favorites, only: [:index, :create, :destroy] 
  post"/favorites", to: "favorites#create"
  post"/reviews", to: "reviews#create"
  post"/login", to: "sessions#create"
  delete"/logout", to: "sessions#destroy"
  post"/signup", to: "users#create"
  get"/me", to: "users#showme"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
  get '*path', to: 'pages#index', via: :all
end
