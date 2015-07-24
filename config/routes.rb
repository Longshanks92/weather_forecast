Rails.application.routes.draw do
  resources :cityweathers
  devise_for :users
  root 'cityweathers#index'
end
