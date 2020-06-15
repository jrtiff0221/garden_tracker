Rails.application.routes.draw do
  

  root 'application#home'
  get '/signup', to: 'users#new'
  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users, except: [:new]
  
  resources :gardens 

  resources :produces do 
    resource :gardens 
  end

  resource :produces


  

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
