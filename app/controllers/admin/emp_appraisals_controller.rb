class Admin::EmpAppraisalsController < AdminController 
    before_action :load_employees

    def index 
        @report = EmpAppraisal.all
    end

    def new
        @employee = Employee.find(params[:employee_id]) # Assuming employee_id is passed in the URL
        @emp_appraisal = EmpAppraisal.new # Create a new, empty appraisal form object
    end

    def edit
        @emp_appraisal = EmpAppraisal.find(params[:id])
    end

    def update
        if @emp_appraisal.update(emp_appraisal_params)
          flash[:notice] = "Appraisal form updated successfully!"
          redirect_to admin_emp_appraisals_path  # Redirect to appraisal list (adjust path as needed)
        else
          flash[:alert] = "Failed to update appraisal form!"
          render :edit  # Render the edit form again with errors
        end
    end
    def set_emp_appraisal
        @emp_appraisal = EmpAppraisal.find(params[:id])  # Find the appraisal form by ID
    end

    private
   

    def load_employees 
        @employee = Employee.all
    end 

    def emp_appraisal_params
        params.require(:emp_appraisal).permit(:rating, :comment)
    end
end