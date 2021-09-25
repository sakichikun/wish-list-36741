Rails.application.routes.draw do
  devise_for :users
  root to: 'wishes#index'
  resources :wishes do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
