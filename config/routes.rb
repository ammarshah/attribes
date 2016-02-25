Rails.application.routes.draw do
  resources :items
  resources :requisitions
  root to: 'visitors#index'
  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }
end
