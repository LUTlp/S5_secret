Rails.application.routes.draw do

  root   'static#home'

  get    '/signup',  to: 'users#new'
  get   '/page-secrete',  to: 'static#secret', as: 'pagesecrete'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
end
