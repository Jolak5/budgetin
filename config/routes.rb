Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  
  resources :entities
  resources :groups
  resources :users
  resources :splash, only: [:index]
 
  
end
