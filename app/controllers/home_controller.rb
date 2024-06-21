class HomeController < ApplicationController
    def index 
        @public_jobs = Job.all
    end
    
end