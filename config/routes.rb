Rails.application.routes.draw do
  
  get 'sessions/new'

  root 'sessions#new'
  
  get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/edit_user/:id' => 'users#edit_user'
  resources :users
  
  get '/product', to: 'products#new'
  get '/products', to: 'products#index'
  get  '/edit_product/:id', to: 'products#edit_product'
  delete 'products/:id', to: 'products#destroy'
  resources :products
  
  end