Rails.application.routes.draw do
  resources :gyms, only: [:show, :destroy, :update, :index]

  resources :clients, only: [:show, :update, :index]

  resources :memberships, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
