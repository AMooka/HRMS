class JobApplicationsController < ApplicationController
    before_action :load_job
  
      def new
          @Job = Job.order(:title)
          @jobapplication = JobApplication.new
      end
  
      def create
          @jobapplication = JobApplication.new(job_application_params)
          @jobapplication.status = :pending
          if @jobapplication.save
            flash[:success] = "Application successfully created"
            render :action => 'show'
          else
            flash[:error] = "Something went wrong"
            render :action => 'new'
          end
      end
  
  
      private
      def job_application_params
          params.require(:job_application).permit(:job_id, :name, :email, :tel_no, :cover_letter, :resume)
      end
  
      def load_job 
        @job = Job.all
      end
  end