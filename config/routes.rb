Rails.application.routes.draw do
  resources :projects, only: [:create, :new, :index, :show]
end
