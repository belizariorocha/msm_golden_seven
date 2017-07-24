class DirectorsController < ApplicationController
    
    def index
        @output = Director.all.order(:name)
        render("directors/index.html.erb")
    end
    def show
        @id = params[:the_id]
        @row = Director.find(@id)
        render("directors/show.html.erb")
    end
    
end