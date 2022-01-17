Rails.application.routes.draw do
  resources :menu_items
  Rails.application.routes.draw do
  resources :menu_items
    resources :quotes
  end
end
