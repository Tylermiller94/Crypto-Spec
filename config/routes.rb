Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'pages/home'
  get 'forum', to: 'posts#index'
  get '/', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'products', to: 'products#index'
  get 'orders', to: 'order_items#index'
  get 'bitcoin', to: 'bitcoin#index'
  devise_for :users
  get 'hello_world', to: 'hello_world#index'
  root to: "pages#home"

  get 'cart', to: 'carts#show'

  resource :cart, only: [:show]

  resources :posts
end
