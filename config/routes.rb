Rails.application.routes.draw do

  get 'order_success/show'

  get 'order_details/add', to: 'order_details#add'

  root 'home#index'
  get '/contacts', to: 'contacts#index'
  get '/menus', to: 'menus#index'
  resources :orders
  resources :items
  resources :comments
end
