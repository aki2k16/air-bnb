Rails.application.routes.draw do
  devise_for :users
  root to: 'root#index'
  resources :users, only: [:show]
  resources :reservations, only: [:create]
  resources :rooms, only: [:index, :show] do
    resources :reviews, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
