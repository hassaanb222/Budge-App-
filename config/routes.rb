Rails.application.routes.draw do
  devise_for :users
  # root "articles#index"
  get "/groups/index", to: "groups#index"
  resources :groups, only: [:index, :new, :create] do
    resources :payments, only: [:index, :new, :create]
  end
end
