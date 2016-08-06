Rails.application.routes.draw do

  devise_for :admins
  devise_for:users
  
  
  resources :mems do
    collection do
     get 'my' => "mems#my"
     get 'inactive'
  end
 end
  
  
  get 'home/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  root 'mems#index'
end
