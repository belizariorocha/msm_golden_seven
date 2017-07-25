class MoviesController < ApplicationController
    
    #CREATE
    def new
        render("movies/new_form.html.erb")
    end
    def create
        d = Movie.new
        d.title = params[:title]
        d.image_url = params[:image_url]
        d.year = params[:year]
        d.duration = params[:duration]
        d.description = params[:description]
        d.save
        
        redirect_to("/movies")
    end
    
    #READ
    def index
        @output = Movie.all
        render("movies/index.html.erb")
    end
    def show
        @id = params[:the_id]
        @row = Movie.find(@id)
        render("movies/show.html.erb")
    end
    
    #UPDATE
    def edit
        @id = params[:the_id]
        @row = Movie.find(@id)
        render("movies/edit_form.html.erb")
    end
    def update
        @id = params[:the_id]
        d = Movie.find(@id)
        d.title = params[:title]
        d.image_url = params[:image_url]
        d.year = params[:year]
        d.duration = params[:duration]
        d.description = params[:description]
        d.save
        redirect_to("/movies/#{@id}")
    end
    
    #DELETE
    def destroy_row
        @id = params[:the_id]
        Movie.find(@id).destroy
        redirect_to("/movies")
    end
    
end