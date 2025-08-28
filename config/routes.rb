Rails.application.routes.draw do
  resources :events, only: [:index]
  resources :reminders, only: [:index]
end
