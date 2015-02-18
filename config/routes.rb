Rails.application.routes.draw do


  resources :requirements
  resources :student_requirements
  # Maintain relations
  resources :guardianships
  resources :parents
  %w[index payments tests reservations classlist year existing].each do |page|
      get page, controller: 'pages', action: page
  end

  root to: "pages#index"

  devise_for :users

  resources :students do
      resources :tpermits
      resources :reservations
      resources :assessments
  end
end
