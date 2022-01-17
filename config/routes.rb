Rails.application.routes.draw do
  resources :menu_items, only: [:index, :show, :create, :update, :destroy]
  resources :quotes
end
