class AdminController < ApplicationController
    layout "admin"
    before_action :authenticate_admin!
    

    def index 
        @departments = Department.all
        @department_number = Department.count
        
        @job_applications = JobApplication.all
        @job_application_number = JobApplication.count

        @admin_employees = Employee.all
        @employe_count = Employee.count
    end
end