Rails.application.routes.draw do
  devise_for :loggings
  
  devise_for :userlogs


  # get /about
  get "about-us", to: "about#index", as: :about
  
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "sign_up", to: "registrati#new"
  post "sign_up", to: "registrati#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"

  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"


  root to: "main#index"

  resources :books
  
  get "/authors", to: "authors#index"
  post "/save", to: "authors#create"

  get "first",:to=>"authors#first"
  get "success",:to=>"authors#success"
 
end
