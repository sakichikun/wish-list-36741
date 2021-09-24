Rails.application.routes.draw do
  devise_for :users
  root to: 'wishes#index'
  resources :wishes
  resources :users, only: :show
end
