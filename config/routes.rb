Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "prototypes#index"
  # resources :prototypes, only:[:index, :new, :create, :show, :edit, :update]
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :commemts, only: :create
  end
  resources :users, only: :show
end
