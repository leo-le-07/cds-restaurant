Rails.application.routes.draw do
  get 'order_details/add', to: 'order_details#add'

  root 'home#index'
  get '/items', to: 'items#index'
  get '/contacts', to: 'contacts#index'
  get '/menus', to: 'menus#index'
  resources :orders
end
