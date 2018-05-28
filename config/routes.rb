Rails.application.routes.draw do
  
  root 'static_pages#login'
  
  get '/signup', to: 'users#new'
  get '/login', to: 'static_pages#login', as: 'login'
  
  get '/newproduct', to: 'products#new'
  
end