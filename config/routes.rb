Rails.application.routes.draw do

  devise_for :users
  root to: 'clothing_items#home'
  resources :users, except: [:index]

  resources :clothing_items, only: [:index, :show] do
    resources :reservations, only: [:new, :create]
    resources :reviews, except: [:show, :destroy]
  end

  resources :reservations, only: [:index, :show, :destroy]
  resources :reviews, only: [:destroy]
end
