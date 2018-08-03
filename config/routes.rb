Rails.application.routes.draw do
  root to: 'tests#index'

  devise_for :users


  resources :users, only: [] do
    collection do
      get :dashboard
      get :edit_profile
      patch :update_profile
      get :my_tests
      get :my_reviews
      get :my_balance
      get :invite_friends
    end
  end

  resources :tests do
    resources :reviews, only: [:index, :new, :create]
  end

	resources :reviews, only: [:index, :destroy, :show]
end
