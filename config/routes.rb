Rails.application.routes.draw do
  
  resources :movies, only: :index
  resources :reviews, only: :index
  resources :users, only: :index

  post"/login", to: "sessions#create"
  delete"/logout", to: "sessions#destroy"
  post"/signup", to: "users#create"

  get"/user", to: "users#show"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
