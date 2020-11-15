Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # корень сайта
  root to: "events#index"

  resources :events
  resources :users, only: [:show, :edit, :update]
end
