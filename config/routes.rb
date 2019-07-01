Rails.application.routes.draw do
  resources :room_types
  resources :rooms
  get 'home/index'
  devise_for :users
  resources :facilities
  resources :customers
  resources :membership_levels
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Uploader::Engine => '/uploader'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
   
  #devise_scope :user do
  #  get 'signup', to: 'devise/sessions#new'
  #  delete 'signout', to: 'devise/sessions#destroy'
  #end

  root to: "home#index"
  
end
