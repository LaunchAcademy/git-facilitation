Rails.application.routes.draw do
  resources :wizards do
    resources :spells, only: [:index]
  end

  resources :spells, only: [:index]

  resources :centaurs, only: [:index, :show]

  resources :trolls, only: [:index]

  root 'homes#index'
  # devise_for :users
end
