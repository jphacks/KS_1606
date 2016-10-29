Rails.application.routes.draw do

  # root
  root 'admin#index'
  get '/index' => 'admin#index'
  get '/information' => 'admin#information'
  get '/menu' => 'admin#menu'
  namespace :admin do
    get 'manual/information'
    get 'manual/menu'
    get 'manual/dashboard'
  end
end
