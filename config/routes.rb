Rails.application.routes.draw do
  resources :users, only: [:login, :create, :show]

  
  get '/login', to: "sessions#login"
  post 'login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  post '/signup', to: "sessions#create"

  
  resources :gardens 
  resources :produces

  

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
