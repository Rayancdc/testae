Rails.application.routes.draw do
  devise_for :users

  root to: 'tests#home'

  resources :tests do
    resources :reviews, only: [:show, :new, :create]
  end
end
