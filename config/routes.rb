Rails.application.routes.draw do
  root 'restaurants#index'
  get 'restaurants/index'

  devise_for :users
  
end
