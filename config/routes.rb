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


# DIRECTORS - NEW & CREATE
  get("/director/new", :controller => "directors", :action => "new_form")
  get("/create_director", :controller => "directors", :action => "create")

# DIRECTORS - INDEX & DETAILS/SHOW
 get("/directors", :controller => "directors", :action => "index")
 get("/directors/:director_id", :controller => "directors", :action => "show")

# DIRECTORS - EDIT & UPDATE
 get("/directors/:director_id/edit", :controller => "directors", :action => "edit")
 get("/update_director/:director_id", :controller => "directors", :action => "update")

# DIRECTORS
 get("/delete_director/:director_id", :controller => "directors", :action => "destroy")  


# MOVIESS - NEW & CREATE
  get("/movie/new", :controller => "movies", :action => "new_form")
  get("/create_movie", :controller => "movies", :action => "create")

# MOVIESS - INDEX & DETAILS/SHOW
 get("/movies", :controller => "movies", :action => "index")
 get("/movies/:movie_id", :controller => "movies", :action => "show")

# MOVIESS - EDIT & UPDATE
 get("/movies/:movie_id/edit", :controller => "movies", :action => "edit")
 get("/update_movie/:movie_id", :controller => "movies", :action => "update")

# MOVIESS
 get("/delete_movie/:movie_id", :controller => "movies", :action => "destroy")  

end
