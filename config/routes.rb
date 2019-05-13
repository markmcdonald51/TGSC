Rails.application.routes.draw do
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

  root to: "home#index"
  
end
