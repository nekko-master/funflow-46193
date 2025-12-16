Rails.application.routes.draw do
  devise_for :users
  resources :plans
  root to: "plans#index"
end
