Rails.application.routes.draw do
  resources :people, only: [:show, :create]
end
