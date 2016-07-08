Rails.application.routes.draw do
  root 'home#index'
  get '/items', to: 'items#index'
  get '/contacts', to: 'contacts#index'
  get '/menus', to: 'menus#index'
  resources :orders
end
