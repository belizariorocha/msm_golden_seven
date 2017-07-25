class ActorsController < ApplicationController
    
    #CREATE
    def new
        render("actors/new_form.html.erb")
    end
    def create
        d = Actor.new
        d.name = params[:name]
        d.image_url = params[:image_url]
        d.dob = params[:dob]
        d.bio = params[:bio]
        d.save
        
        redirect_to("/actors")
    end
    
    #READ
    def index
        @output = Actor.all
        render("actors/index.html.erb")
    end
    def show
        @id = params[:the_id]
        @row = Actor.find(@id)
        render("actors/show.html.erb")
    end
    
    #UPDATE
    def edit
        @id = params[:the_id]
        @row = Actor.find(@id)
        render("actors/edit_form.html.erb")
    end
    def update
        @id = params[:the_id]
        d = Actor.find(@id)
        d.name = params[:name]
        d.image_url = params[:image_url]
        d.dob = params[:dob]
        d.bio = params[:bio]
        d.save
        redirect_to("/actors/#{@id}")
    end
    
    #DELETE
    def destroy_row
        @id = params[:the_id]
        Actor.find(@id).destroy
        redirect_to("/actors")
    end
    
end