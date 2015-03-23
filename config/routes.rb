Rails.application.routes.draw do
  root to: "static_pages#index"
  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/services', to: 'static_pages#services', as: 'services'

  devise_for :users
  resources :sale_items
end
