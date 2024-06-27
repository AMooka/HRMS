class EmployeeController < ApplicationController
    layout "employee"
    before_action :all_employees
    before_action :authenticate_employee!
    
    def index 
        
    end

    def all_employees
        @employees = Employee.all
    end 
end