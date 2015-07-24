Rails.application.routes.draw do
  get 'home/index'
  resources :postcodeweathers
  resources :cityweathers
  devise_for :users
  root 'home#index'
end
