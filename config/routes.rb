Rails.application.routes.draw do
  devise_for :users
  
  get '/users/dashboard', to: "tests#dashboard"

  root to: 'tests#index'

  resources :tests do
    resources :reviews, only: [:index, :show, :new, :create]
  end

	resources :reviews, only: :index
end
