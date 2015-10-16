Rails.application.routes.draw do
  devise_for :teachers
  get 'home/index'
  root 'home#index'
end
