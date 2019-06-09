Rails.application.routes.draw do
  get 'admin/administration'
  get 'users/index'
  devise_for :users
  root to: 'dashboards#index'
  resources :users
  resources :projects
  resources :tickets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
