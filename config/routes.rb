Rails.application.routes.draw do
  resources :products
  resources :categories
  devise_for :users
get 'home/index'
get 'home/history'
get 'home/purchases'
get 'home/favorites'
get 'home/admin'
get 'home/reputation'
get 'home/products'
get 'home/sales'
get 'home/summary'

root "home#index"

end
