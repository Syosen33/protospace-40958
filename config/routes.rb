Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :users, only: [:edit, :update]
  resources :prototypes, only: [:new, :create, :destroy] do
    resources :comments, only: [:index, :create]
  end
end
