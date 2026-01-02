Rails.application.routes.draw do
  devise_for :users
  resources :plans do
    resources :plan_steps, only: [:new, :create, :destroy, :edit, :update]
  end
  
  resources :diagnoses, only: [:new, :create]

  get "/about", to: "static_pages#about"

  root to: "plans#index"
end
