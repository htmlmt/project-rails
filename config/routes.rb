ProjectRails::Application.routes.draw do
  get "/" => 'pages#home', :as => :home

  resources :students
  
  resources :teachers
  
  resources :klasses
end