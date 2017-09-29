Rails.application.routes.draw do
  resources :microposts
  resources :users
  root 'users#index'
  get '/signup', to: 'users#new'
end
