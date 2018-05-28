Rails.application.routes.draw do
  get 'static_pages/login'

  root 'application#hello'
end