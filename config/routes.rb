Rails.application.routes.draw do
  devise_for :users
  root to: 'wishes#index'
  resources :wishes do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
  
  post 'like/:id' => 'likes#create', as: 'create_like' #asを使ってPrefixのpathを任意に指定
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end
