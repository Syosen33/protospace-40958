Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :users, only: [:edit, :update]
  resources :prototypes
    resources :comments, only: [:index, :create]

end
