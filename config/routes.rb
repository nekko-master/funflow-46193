Rails.application.routes.draw do
  devise_for :users
  resources :plans do
    resources :plan_steps, only: [:new, :create]
  end
  root to: "plans#index"
end
