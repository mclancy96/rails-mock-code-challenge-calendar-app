Rails.application.routes.draw do
  resources :events
  resources :reminders
  resources :notifications
end
