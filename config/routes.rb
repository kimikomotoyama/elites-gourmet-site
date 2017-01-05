Rails.application.routes.draw do
  root 'restaurants#index'
  get 'restaurants/index', as: 'user_root'

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  
end
