Rails.application.routes.draw do
  resources :vehicles, only: [:show]
end
