Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/gallery', to: 'products#index'
  resources :products, only: [:create, :new]
end
