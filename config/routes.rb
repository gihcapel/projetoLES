Rails.application.routes.draw do
  
  root 'static_pages#login'
  
  get '/signup', to: 'users#new'
  get '/login', to: 'static_pages#login', as: 'login'
  resources :users
  
  get '/products', to: 'products#new'
  
end