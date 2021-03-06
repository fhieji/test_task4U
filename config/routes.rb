Rails.application.routes.draw do

  devise_for :users
  root to: 'dashboards#index'
  resources :users
  resources :dashboards, shallow:true  do
    resources :tickets
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
