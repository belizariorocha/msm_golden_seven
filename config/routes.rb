Rails.application.routes.draw do

  # build report: http://grades.firstdraft.com/builds/8f26443b-9b6b-4b51-8332-27126989e020
  
  get("/",     { :controller => "machine", :action => "directors_index" })

  # CREATE
  # get("/photos/new", { :controller => "pictures", :action => "new_form" })
  # get("/create_photo", { :controller => "pictures", :action => "create_row" })

  # READ
  get("/directors", { :controller => "machine", :action => "directors_index" })
  # get("/photos/:the_id", { :controller => "pictures", :action => "show" })
  
  # UPDATE
  # get("/photos/:the_id/edit", { :controller => "pictures", :action => "edit_form" })
  # get("/update_photo/:the_id", { :controller => "pictures", :action => "update_row" })
  
  # DELETE
  # get("/delete_photo/:the_id", { :controller => "pictures", :action => "destroy_row" })
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"

end
