Rails.application.routes.draw do


  resources :requirements
  resources :student_requirements
  # Maintain relations
  resources :guardianships
  resources :parents
  get 'pages/index'

  root to: "pages#index"
  
  devise_for :users

  resources :students do
      resources :permits
      resources :payments
      resources :tests
  end
end
