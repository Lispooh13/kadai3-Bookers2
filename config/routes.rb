Rails.application.routes.draw do
  devise_for :users
  
  root to: 'homes#top'
  get'about' =>'homes#about'
 
  resources :books, only: [:create, :index, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
end
