Rails.application.routes.draw do
  resources :courses
  devise_for :teachers
  get 'home/index'
  root 'home#index'
end
