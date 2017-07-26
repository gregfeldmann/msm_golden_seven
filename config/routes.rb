Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"


# ACTORS - NEW & CREATE
  get("/actor/new", :controller => "actors", :action => "new_form")
  get("/create_actor", :controller => "actors", :action => "create")

# ACTORS - INDEX & DETAILS/SHOW
 get("/actors", :controller => "actors", :action => "index")
 get("/actors/:actor_id", :controller => "actors", :action => "show")

# ACTORS - EDIT & UPDATE
 get("/actors/:actor_id/edit", :controller => "actors", :action => "edit")
 get("/update_actor/:actor_id", :controller => "actors", :action => "update")

# ACTORS
 get("/delete_actor/:actor_id", :controller => "actors", :action => "destroy")
  
end
