Rails.application.routes.draw do
  root to: 'clothing_items#home'
  resources :users, except: [:index]
  resources :clothing_items, only: [:index, :show]
  resources :reservations
end
