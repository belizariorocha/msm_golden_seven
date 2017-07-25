Rails.application.routes.draw do

  # build report: http://grades.firstdraft.com/builds/8f26443b-9b6b-4b51-8332-27126989e020
  
  get("/",     { :controller => "application", :action => "index" })

  # CREATE
  get("/actors/new", { :controller => "actors", :action => "new" })
  get("/actors/create", { :controller => "actors", :action => "create" })
  get("/directors/new", { :controller => "directors", :action => "new" })
  get("/directors/create", { :controller => "directors", :action => "create" })
  get("/movies/new", { :controller => "movies", :action => "new" })
  get("/movies/create", { :controller => "movies", :action => "create" })

  # READ
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:the_id", { :controller => "actors", :action => "show" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:the_id", { :controller => "directors", :action => "show" })
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:the_id", { :controller => "movies", :action => "show" })
  
  # UPDATE
  get("/actors/:the_id/edit", { :controller => "actors", :action => "edit" })
  get("/actors/:the_id/update", { :controller => "actors", :action => "update" })
  get("/directors/:the_id/edit", { :controller => "directors", :action => "edit" })
  get("/directors/:the_id/update", { :controller => "directors", :action => "update" })
  get("/movies/:the_id/edit", { :controller => "movies", :action => "edit" })
  get("/movies/:the_id/update", { :controller => "movies", :action => "update" })
  
  # DELETE
  get("actors/:the_id/delete", { :controller => "actors", :action => "destroy_row" })
  get("directors/:the_id/delete", { :controller => "directors", :action => "destroy_row" })
  get("movies/:the_id/delete", { :controller => "movies", :action => "destroy_row" })
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"

end
