Rails.application.routes.draw do
  get 'exams/index'
  devise_for :users

  resources :exams, expect: %i[destroy show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
