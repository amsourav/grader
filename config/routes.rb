Rails.application.routes.draw do
  resources :courses do
    resources :exams, except: :destroy
  end
  devise_for :teachers
  get 'home/index'
  root 'home#index'
  mathjax 'mathjax'
end
