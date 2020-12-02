Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'tweets#index'
  resources :tweets do
    resources :comments, only: :create
  end
  resources :users
end
