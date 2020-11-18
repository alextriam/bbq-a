Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # корень сайта
  root to: "events#index"

  resources :events do
    # Вложенный ресурс комментов
    # Нам понадобится два экшена: create и destroy
    resources :comments, only: [:create, :destroy]
    # вложенный ресурс подписок
    resources :subscriptions, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update]
end
