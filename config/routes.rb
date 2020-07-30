Rails.application.routes.draw do
      

  root 'application#home'
  
  devise_for :users

  resources :gardens
  resources :comments
  
  resources :comments do 
    resource :gardens, only: [ :index, :show, :new ] 
  end


# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
