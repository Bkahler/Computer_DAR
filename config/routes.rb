Rails.application.routes.draw do
  root to: "static_pages#index"

  devise_for :users
  resources :sale_items
end
