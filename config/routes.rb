Rails.application.routes.draw do
  root to: 'clothing_items#home'
  resources :clothing_items, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
