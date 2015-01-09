# == Route Map
#
#                   Prefix Verb   URI Pattern                       Controller#Action
#              pages_index GET    /pages/index(.:format)            pages#index
#            guardianships GET    /guardianships(.:format)          guardianships#index
#                          POST   /guardianships(.:format)          guardianships#create
#         new_guardianship GET    /guardianships/new(.:format)      guardianships#new
#        edit_guardianship GET    /guardianships/:id/edit(.:format) guardianships#edit
#             guardianship GET    /guardianships/:id(.:format)      guardianships#show
#                          PATCH  /guardianships/:id(.:format)      guardianships#update
#                          PUT    /guardianships/:id(.:format)      guardianships#update
#                          DELETE /guardianships/:id(.:format)      guardianships#destroy
#         new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
#            user_password POST   /users/password(.:format)         devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
#                          PATCH  /users/password(.:format)         devise/passwords#update
#                          PUT    /users/password(.:format)         devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)           devise/registrations#cancel
#        user_registration POST   /users(.:format)                  devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)          devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)             devise/registrations#edit
#                          PATCH  /users(.:format)                  devise/registrations#update
#                          PUT    /users(.:format)                  devise/registrations#update
#                          DELETE /users(.:format)                  devise/registrations#destroy
#                  parents GET    /parents(.:format)                parents#index
#                          POST   /parents(.:format)                parents#create
#               new_parent GET    /parents/new(.:format)            parents#new
#              edit_parent GET    /parents/:id/edit(.:format)       parents#edit
#                   parent GET    /parents/:id(.:format)            parents#show
#                          PATCH  /parents/:id(.:format)            parents#update
#                          PUT    /parents/:id(.:format)            parents#update
#                          DELETE /parents/:id(.:format)            parents#destroy
#                 students GET    /students(.:format)               students#index
#                          POST   /students(.:format)               students#create
#              new_student GET    /students/new(.:format)           students#new
#             edit_student GET    /students/:id/edit(.:format)      students#edit
#                  student GET    /students/:id(.:format)           students#show
#                          PATCH  /students/:id(.:format)           students#update
#                          PUT    /students/:id(.:format)           students#update
#                          DELETE /students/:id(.:format)           students#destroy
#                 payments GET    /payments(.:format)               payments#index
#                          POST   /payments(.:format)               payments#create
#              new_payment GET    /payments/new(.:format)           payments#new
#             edit_payment GET    /payments/:id/edit(.:format)      payments#edit
#                  payment GET    /payments/:id(.:format)           payments#show
#                          PATCH  /payments/:id(.:format)           payments#update
#                          PUT    /payments/:id(.:format)           payments#update
#                          DELETE /payments/:id(.:format)           payments#destroy
#                    tests GET    /tests(.:format)                  tests#index
#                          POST   /tests(.:format)                  tests#create
#                 new_test GET    /tests/new(.:format)              tests#new
#                edit_test GET    /tests/:id/edit(.:format)         tests#edit
#                     test GET    /tests/:id(.:format)              tests#show
#                          PATCH  /tests/:id(.:format)              tests#update
#                          PUT    /tests/:id(.:format)              tests#update
#                          DELETE /tests/:id(.:format)              tests#destroy
#

Rails.application.routes.draw do
  get 'pages/index'

  resources :guardianships

  devise_for :users
  resources :parents

  resources :students

  resources :payments

  resources :tests

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
