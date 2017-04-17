Rails.application.routes.draw do
  devise_for :users
  resources :projects, only: [:create, :new, :index, :show]
end
