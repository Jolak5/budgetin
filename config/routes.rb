Rails.application.routes.draw do
  devise_for :users

  root 'splash#index'
  
  resources :entities
  resources :groups
  resources :users
 
  
end
