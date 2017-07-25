class DirectorsController < ApplicationController
    
    #CREATE
    def new
        render("directors/new_form.html.erb")
    end
    def create
        d = Director.new
        d.name = params[:name]
        d.image_url = params[:image_url]
        d.dob = params[:dob]
        d.bio = params[:bio]
        d.save
        
        redirect_to("/directors")
    end
    
    #READ
    def index
        @output = Director.all.order(:name)
        render("directors/index.html.erb")
    end
    def show
        @id = params[:the_id]
        @row = Director.find(@id)
        render("directors/show.html.erb")
    end
    
    #UPDATE
    def edit
        @id = params[:the_id]
        @row = Director.find(@id)
        render("directors/edit_form.html.erb")
    end
    def update
        @id = params[:the_id]
        d = Director.find(@id)
        d.name = params[:name]
        d.image_url = params[:image_url]
        d.dob = params[:dob]
        d.bio = params[:bio]
        d.save
        redirect_to("/directors/#{@id}")
    end
    
    #DELETE
    def destroy_row
        @id = params[:the_id]
        Director.find(@id).destroy
        redirect_to("/directors")
    end
    
end