Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers, only: [:new, :index, :create, :show, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
