Rails.application.routes.draw do
  resources :meals, only: [:index]
  resource  :cart, only: [:show] do
    get :checkout
  end
  resources :order_items, only: [:create, :update, :destroy]
  resources :orders, only: [:index, :edit, :create, :update]
  resources :order_forms
  
  root to:  "meals#index"
  
  get       'sessions/create'
  get       '/auth/:provider/callback', to: 'sessions#create'
  delete    '/logout', to: 'sessions#destroy'
end
