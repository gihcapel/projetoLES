Rails.application.routes.draw do
  get 'static_pages/login'
  root 'static_pages#login'
end