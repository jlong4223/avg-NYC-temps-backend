Rails.application.routes.draw do
  # using the only and key array, only allows users to access a couple routes even though there are more controllers for other routes
  resources :temperatures, only: [:index, :create]
  resources :locations, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
