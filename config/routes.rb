Rails.application.routes.draw do
  resources :products do
    resources :myimages
  end  
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


# Rails.application.routes.draw do
#   resources :products do
#     resources :myimages
#   end
#   resources :categories
#   devise_for :users
# 
#   resources :my_shopping_carts, only: [:create,:destroy]
#   resources :favorites, only: [:create,:destroy]
#   resources :payments, only: [:show]
#   post "/pay", to: "payments#create"
#   get "/checkout", to: "payments#checkout"
# 
# 
#   get "/add/:product_id", as: :add_to_cart, to: "my_shopping_carts#create" 
# 
#   get 'home/search'
#   get 'home/car'
#   get 'home/purchases'
#   get 'home/history'
#   get 'home/favorites'
#   get 'home/index'
#   get 'home/administrador'
#   get 'home/reputation'
#   get 'home/products'
#   get 'home/sales'
#   get 'home/summary'
# 
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   root "home#index"
# end