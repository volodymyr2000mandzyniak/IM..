Rails.application.routes.draw do
  devise_for :users
  
  root 'movies#index'
  
  resources :news

  resources :categories
  
  resources :movies do 
    resources :reviews
  end
    
  
end
