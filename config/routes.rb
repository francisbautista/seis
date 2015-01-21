Rails.application.routes.draw do



  resources :requirements
  resources :student_requirements
  # Maintain relations
  resources :guardianships
  resources :parents
  %w[index payments tests].each do |page|
      get page, controller: 'pages', action: page
  end

  root to: "pages#index"

  devise_for :users

  resources :students do
      resources :permits
      resources :reservations
      resources :assessments      
      resources :tests
  end
end
