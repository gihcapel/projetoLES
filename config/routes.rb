Rails.application.routes.draw do
  
  get 'sessions/new'

  root 'static_pages#login'
  
  get '/signup', to: 'users#new'
  get '/home', to: 'static_pages#login', as: 'login'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  
  get '/products', to: 'products#new'
  
  
  
end