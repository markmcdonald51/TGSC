Rails.application.routes.draw do
  resources :facilities
  resources :customers
  resources :membership_levels
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  mount Uploader::Engine => '/uploader'
end
