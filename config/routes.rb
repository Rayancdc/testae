Rails.application.routes.draw do
  devise_for :users

  resources :tests do
    resources :reviews, only: [:show, :new, :create]
  end
end
