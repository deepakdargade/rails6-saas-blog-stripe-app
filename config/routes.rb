Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts
  get 'pricing', to: 'static_pages#pricing'
  post 'checkout/create', to: 'checkout#create', as: 'checkout_create'
end
