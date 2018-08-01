Rails.application.routes.draw do
  devise_for :users

  root to: 'tests#home'

  resources :tests do
    resources :reviews, only: [:index, :show, :new, :create]
  end

	resources :reviews, only: :index
end
