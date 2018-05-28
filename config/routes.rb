Rails.application.routes.draw do
  get '/login', to: 'static_pages#login', as: 'login'
  root 'static_pages#login'
end