Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :tags do
    resources :transaction_records, only: [:index, :new, :create, :destroy]
  end  
end
