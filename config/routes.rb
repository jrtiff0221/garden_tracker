Rails.application.routes.draw do
    
  resources :users, except: [:new]
  
  resources :gardens 
  resources :comments
  
  resources :comments do 
    resource :gardens 
  end
  
  root 'application#home'
  get '/signup', to: 'users#new'
  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
