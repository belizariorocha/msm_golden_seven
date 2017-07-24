class MachineController < ApplicationController
    
    def directors_index
        
        @output = Director.all.order(:name)
        
        render("layouts/index.html.erb")
    end
    
end