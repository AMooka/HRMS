class Employee::EmpAppraisalsController < EmployeeController
  before_action :load_employee
  before_action :set_employee_emp_appraisal, only: %i[ show edit update destroy ]

  # GET /employee/emp_appraisals or /employee/emp_appraisals.json
  def index
    @employee_emp_appraisals = EmpAppraisal.all
  end

  # GET /employee/emp_appraisals/1 or /employee/emp_appraisals/1.json
  def show
  end

  # GET /employee/emp_appraisals/new
  def new
    @employee = Job.order(:last_name)
    @employee_emp_appraisal = EmpAppraisal.new
    @current_employee = current_user
  end

  # GET /employee/emp_appraisals/1/edit
  def edit
  end

  # POST /employee/emp_appraisals or /employee/emp_appraisals.json
  def create
    @employee_emp_appraisal = EmpAppraisal.new(employee_emp_appraisal_params)

    respond_to do |format|
      if @employee_emp_appraisal.save
        format.html { redirect_to employee_emp_appraisal_url(@employee_emp_appraisal), notice: "Emp appraisal was successfully created." }
        format.json { render :show, status: :created, location: @employee_emp_appraisal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee_emp_appraisal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee/emp_appraisals/1 or /employee/emp_appraisals/1.json
  def update
    respond_to do |format|
      if @employee_emp_appraisal.update(employee_emp_appraisal_params)
        format.html { redirect_to employee_emp_appraisal_url(@employee_emp_appraisal), notice: "Emp appraisal was successfully updated." }
        format.json { render :show, status: :ok, location: @employee_emp_appraisal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee_emp_appraisal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee/emp_appraisals/1 or /employee/emp_appraisals/1.json
  def destroy
    @employee_emp_appraisal.destroy!

    respond_to do |format|
      format.html { redirect_to employee_emp_appraisals_url, notice: "Emp appraisal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_emp_appraisal
      @employee_emp_appraisal = EmpAppraisal.find(params[:id])
    end

    def load_employee
      @employees = Employee.all
    end 
    # Only allow a list of trusted parameters through.
    def employee_emp_appraisal_params
      params.require(:emp_appraisal).permit(:employee_id, :department_id, :data_of_appraisal, :achievement, :skills, :strengths, :area_of_improvement, :overal_performance, :additional_comments)
    end
end
