ProjectRails::Application.routes.draw do
  get "/" => 'pages#home', :as => :home
  
  get "students" => 'students#index', :as => :students
  get "students/:id" => 'students#show', :as => :student
  get "students/new" => 'students#new', :as => :new_student
  post "students" => 'students#create', :as => :create_student
  get "students/:id/edit" => 'students#edit', :as => :edit_student
  put "students/:id" => 'students#update', :as => :update_student
  delete "students/:id" => 'students#delete', :as => :delete_student

  get "teachers" => 'teachers#index', :as => :teachers
  get "teachers/:id" => 'teachers#show', :as => :teacher
  get "teachers/new" => 'teachers#new', :as => :new_teacher
  post "teachers" => 'teachers#create', :as => :create_teacher
  get "teachers/:id/edit" => 'teachers#edit', :as => :edit_teacher
  put "teachers/:id" => 'teachers#update', :as => :update_teacher
  delete "teachers/:id" => 'teachers#delete', :as => :delete_teacher

  get "classes" => 'classes#index', :as => :classes
  get "classes/:id" => 'classes#show', :as => :class
  get "classes/new" => 'classes#new', :as => :new_class
  post "classes" => 'classes#create', :as => :create_class
  get "classes/:id/edit" => 'classes#edit', :as => :edit_class
  put "classes/:id" => 'classes#update', :as => :update_class
  delete "classes/:id" => 'classes#delete', :as => :delete_class
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
