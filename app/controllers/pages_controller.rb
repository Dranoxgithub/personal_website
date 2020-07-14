class PagesController < ApplicationController
    def show 
        puts "------"
        puts ENV['BOB']
        render template: "pages/#{params[:page]}"
    end
end
