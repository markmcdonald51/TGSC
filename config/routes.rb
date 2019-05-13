Rails.application.routes.draw do
  resources :facilities
  resources :customers
  resources :membership_levels
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Uploader::Engine => '/uploader'
  
  
  #match 'auth/:provider/callback', to: 'sessions#create'
  #match 'auth/failure', to: redirect('/')
  #match 'signout', to: 'sessions#destroy', as: 'signout'
  
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  
  

end
