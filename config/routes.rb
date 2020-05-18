Rails.application.routes.draw do
  # get 'shops/index'
  # get 'shops/show' 
  resources :shops 
  resources :products
  resources :order_items
  resources :cards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "shops#index"
end
