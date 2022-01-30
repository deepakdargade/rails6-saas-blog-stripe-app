Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts
  get 'pricing', to: 'static_pages#pricing'
  post 'checkout/create', to: 'checkout#create', as: 'checkout_create'
  post 'billing_portal/create', to: 'billing_portal#create', as: 'billing_portal_create'
end
