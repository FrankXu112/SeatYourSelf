Rails.application.routes.draw do
  root 'restaurants#index'

  resources :restaurants

  resources :users, only: [:new, :create, :show, :edit, :update]

  resources :sessions, only: [:new, :create, :destroy]
end
