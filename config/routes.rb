Rails.application.routes.draw do
  root to: 'tests#index'

  devise_for :users


  resources :users, only: [] do
    collection do
      get :dashboard
    end
  end

  resources :tests do
    resources :reviews, only: [:index, :new, :create]
  end

	resources :reviews, only: [:index, :destroy, :show]
end
