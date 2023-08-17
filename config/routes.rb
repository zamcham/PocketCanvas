Rails.application.routes.draw do
  get 'transaction_records/index'
  get 'transaction_records/show'
  get 'transaction_records/new'
  devise_for :users
  root 'home#index'
end
