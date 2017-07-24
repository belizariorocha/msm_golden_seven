class DirectorsController < ApplicationController
    
    #CREATE
    def new_form
        render("directors/new_form.html.erb")
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
    
    #DELETE
    def destroy_row
        @id = params[:the_id]
        Director.find(@id).destroy
        MessageBox.call(0, "Director deleted", "Titel", MB_OK | MB_ICONINFORMATION)
        redirect_to("/directors")
    end
    
end