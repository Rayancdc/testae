Rails.application.routes.draw do
  devise_for :users

  root to: 'tests#index'

  resources :tests do
    resources :reviews, only: [:show, :new, :create]
  end





  get "/riza", to: "tests#rizoca"
end
