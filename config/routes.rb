Rails.application.routes.draw do
  devise_for :users

  root 'teddies#index'
  resources :teddies, only: [:index, :show]

  mount StripeEvent::Engine, at: '/stripe-webhooks'


  resources :orders, only: [:show, :create]  do
    resources :payments, only: :new
  end
end
