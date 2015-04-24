Rails.application.routes.draw do
  root 'restaurants#index'

  resources :restaurants

  resources :users, only: [:new, :create, :show, :edit, :update]

  resources :sessions, only: [:new, :create, :destroy]
  
  resources :restaurants do
		resources :reservations, only: [:new, :create, :destroy, :show]
	end

	resources :restaurants do
		resources :reviews, only: [:create, :destroy, :show]
	end
end
