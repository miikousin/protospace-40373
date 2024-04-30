Rails.application.routes.draw do
  devise_for :user
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: [:create]
  end
  resources :users, only: :show
  
end
