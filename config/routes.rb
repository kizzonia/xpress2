Rails.application.routes.draw do
  resources :travels
  resources :welcomes
  mount Ckeditor::Engine => '/ckeditor'
  resources :deposits
  resources :menus
  resources :orders do
    resources :locations
  end
  #get 'orders/orders_index', to: 'orders#orders_index'

  resources :accounts
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  authenticated :user do
    root 'accounts#index', as: "authenticated_root"
  end
    root "welcomes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
