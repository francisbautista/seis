Rails.application.routes.draw do

  resources :student_requirements
  resources :requirements

  # Maintain relations
  resources :guardianships
  resources :parents
  get 'pages/index'

  root to: "pages#index"


  devise_for :users

  resources :students do
      resources :payments
      resources :tests
      resources :permits
  end
end
