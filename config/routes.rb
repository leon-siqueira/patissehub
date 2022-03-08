Rails.application.routes.draw do
  devise_for :users
  resources :products, only: %i[index show edit update destroy new create] do
    resources :orders, only: %i[new create]
  end
  resources :orders, only: %i[index show]
  root to: 'pages#home'
  get "/my_profile", to: "pages#my_profile", as: "my_profile"
  get "/profile/:id", to: "pages#profile"
  get "/my_profile/edit", to: "pages#edit"
  post "/my_profile/edit", to: "pages#edit"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
