Rails.application.routes.draw do
  resources :courses do
    resources :exams
  end
  devise_for :teachers
  get 'home/index'
  root 'home#index'
end
