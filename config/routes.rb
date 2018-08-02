Rails.application.routes.draw do
  devise_for :users
  
  get '/users/dashboard', to: "tests#dashboard"

  get '/contact', to: "contacts#contact"

  root to: 'tests#index'

  resources :tests do
    resources :reviews, only: [:index, :show, :new, :create]
  end

	resources :reviews, only: :index
end
