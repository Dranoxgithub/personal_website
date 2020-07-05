class PagesController < ApplicationController
    def show 
        puts "LOOK AT HERE"
        puts params[:pages]
        render template: "pages/#{params[:page]}"
    end
end
