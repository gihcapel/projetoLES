Rails.application.routes.draw do
  
  get 'sessions/new'

  root 'sessions#new'
  
  get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  
  get '/products', to: 'products#new'
  get '/product', to: 'products#index'
  resources :products
  
  
  
  
end