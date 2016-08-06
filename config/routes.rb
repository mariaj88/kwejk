Rails.application.routes.draw do

  get 'home/index'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  root 'home/index'
end
