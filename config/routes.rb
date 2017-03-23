Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"}
  root to: 'root#index'
  get '/rooms/search', to: 'rooms#search'
  resources :root, only: [:new, :create]
  resources :users, only: [:show]
  resources :reservations, only: [:create]
  resources :rooms, only: [:show, :search, :new, :create] do
    resources :reviews, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
