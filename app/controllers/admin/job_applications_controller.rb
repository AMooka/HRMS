class Admin::JobApplicationsController < AdminController
    before_action :load_job
    before_action :filter

    def index 
        @jobapplication = JobApplication.all
    end

    def show 
        @job_application = JobApplication.find(params[:id])
        @resume_URL = @job_application.resume.blob
    end

    def load_job 
        @job = Job.all
    end 

    def shortlist
        @job_application = JobApplication.find(params[:id])
        @job_application.update(status :shortlisted)
          # Optionally send notification to the job seeker
        redirect_to admin_job_applications_path, notice: "Application shortlisted successfully!"
    end
      
    def cancel
        @job_application = JobApplication.find(params[:id])
        @job_application.update(status :cancelled)
        # Optionally send notification to the job seeker
        redirect_to admin_job_applications_path, notice: "Application cancelled successfully!"
    end
      
    def application_no
        @application_count = Job.JobApplication.count
    end

    def filter
        JobApplication.where('@job == job(:title)')
    end
end