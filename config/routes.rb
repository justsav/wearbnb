Rails.application.routes.draw do
  root to: 'clothing_items#home'
  resources :clothing_items, only: [:index, :show] do
    resources :reservations, except: [:destroy]
  end
  resources :reservations, only: [:destroy]
end
