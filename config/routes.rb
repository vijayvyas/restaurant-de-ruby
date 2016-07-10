Rails.application.routes.draw do
  resources :menu_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get 'about_us' => 'home#about_us'
  get 'menu' => 'home#menu'
  get 'user_orders' => 'home#user_orders'
  post 'user_orders' => 'home#checkout'
end
