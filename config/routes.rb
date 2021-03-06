Rails.application.routes.draw do
  get "/login", to:"sessions#new"
  post "/login", to:"sessions#create"
  delete "/logout", to:"sessions#destroy"

  get "/signup",  to:'users#new'
  post "/signup", to:'users#create'
  
  get "/contact", to:'static_pages#contact'
  get "/help",    to:'static_pages#help'
  get "/about",   to:'static_pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'static_pages#home'
  
  resources :users
  resources :account_activations, only: [:edit]
end
