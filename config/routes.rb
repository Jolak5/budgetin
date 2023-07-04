Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  
  resources :groups, only: [:index, :new, :show] do
    resources :entities, only: [:index, :new, :show] 
  end
  
  resources :users
  resources :splash, only: [:index]
 
  
end
