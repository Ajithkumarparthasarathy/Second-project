Rails.application.routes.draw do
  devise_for :loggings
  get 'home/index'
  devise_for :userlogs

  # get /about
  get "about-us", to: "about#index", as: :about

  get "sign_up", to: "registrati#new"
  post "sign_ups", to: "registrati#create"

  root to: "main#index"

  resources :books
  
  get "/authors", to: "authors#index"
  post "/save", to: "authors#create"
 
end
