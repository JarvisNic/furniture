Rails.application.routes.draw do
  resources :rentals
  resources :clients
  resources :typeinmus
  resources :states
  get 'welcome/index'


  root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
