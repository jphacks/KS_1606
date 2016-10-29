Rails.application.routes.draw do
  # root
  root 'admin#index'

  resources :admin
end
