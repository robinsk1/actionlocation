Rails.application.routes.draw do
  get 'pages/spots'

  get 'pages/shoots'

  get 'pages/events'

  get 'pages/reports'

  get 'welcome/index'

  resources :locations
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'welcome#index'
end
