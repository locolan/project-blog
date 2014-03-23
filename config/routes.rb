ProjectBlog::Application.routes.draw do 
  resources :logins
  resources :users
  
  get "posts/:id/new_comment" => 'comments#new', :as => :new_comment
  post "posts/:id/comments" => 'comments#create', :as => :create_comment
  
  resources :posts
  
  root :to => 'users#index'
end
