Rails.application.routes.draw do
  root 'home#index'
  get '/contacts', to: 'contacts#index'
  get '/menus', to: 'menus#index'
  get '/orders', to: 'orders#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
