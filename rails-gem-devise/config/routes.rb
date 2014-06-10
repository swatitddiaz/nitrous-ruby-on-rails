Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'static_pages/home'

  get 'static_pages/about'

  devise_for :users

  root to: 'static_pages#home'
  
end
