Rails.application.routes.draw do
  devise_for :users
  root to: 'root#index'
  resources :rooms, only: [:index] do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
