Rails.application.routes.draw do
  devise_for :users
  resources :products, only: %i[index show edit destroy]
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
