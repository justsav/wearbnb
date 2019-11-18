Rails.application.routes.draw do
  get 'users/create'
  get 'users/new'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'users/show'
  root to: 'clothing_items#home'
  resources :clothing_items, only: [:index, :show] do
    resources :reservations, except: [:destroy]
  end
  resources :reservations, only: [:destroy]
end
