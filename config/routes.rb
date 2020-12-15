Rails.application.routes.draw do

  get "home/index"
  get 'exams/index'
  devise_for :users

  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
