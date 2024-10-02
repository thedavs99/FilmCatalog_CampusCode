Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  resources :genres, only: [:index, :show, :new, :create, :edit, :update]
  resources :directors, only: [:index, :show, :new, :create, :edit, :update]
end
