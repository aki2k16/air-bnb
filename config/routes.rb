Rails.application.routes.draw do
  devise_for :users
  root to: 'root#index'
  resources :users, only: [:show]
  resources :rooms, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
