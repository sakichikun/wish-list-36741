Rails.application.routes.draw do
  devise_for :users
  root to: 'wishes#index'

  get 'search', to: 'wishes#search'
  resources :wishes do
    resource :comments, only: [:create]
    collection do
      get 'search'
    end
  end
  resources :comments, only: [:destroy]
  resources :users, only: :show do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  
  post 'like/:id' => 'likes#create', as: 'create_like' #asを使ってPrefixのpathを任意に指定
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
  resources :likes, only: :show
end
