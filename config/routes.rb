Rails.application.routes.draw do

  resources :images 
  
  root "images#index"
  
  get "/images/new", to: "images#new"
  post "/images/new", to: "images#index"
  
  get "/images", to: "images#index"
end
