Rails.application.routes.draw do
  devise_for :users
  resources :products, only: %i[index]
  root to: 'pages#home'
  get "/my_profile", to: "pages#my_profile", as: "my_profile"
  get "/profile/:id", to: "pages#profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
