class Employee::LeaveApplicationsController < EmployeeController
  before_action :load_employees
  before_action :load_leave_types
  # before_action :set_employee_leave_application, only: %i[ show edit update destroy ]

  # GET /employee/leave_applications or /employee/leave_applications.json
  def index
    @employee_leave_applications = LeaveApplication.all
  end

  # GET /employee/leave_applications/1 or /employee/leave_applications/1.json
  def show
  end

  # GET /employee/leave_applications/new
  def new
    @leave_types = LeaveType.all
    @employee_leave_application = LeaveApplication.new
  end

  # GET /employee/leave_applications/1/edit
  def edit
  end

  # POST /employee/leave_applications or /employee/leave_applications.json
  def create
    @employee_leave_application = LeaveApplication.new(employee_leave_application_params)
    @employee_leave_application = current_employee
    respond_to do |format|
      if @employee_leave_application.save
        format.html { redirect_to employee_leave_application_url(@employee_leave_application), notice: "Leave application was successfully created." }
        format.json { render :show, status: :created, location: @employee_leave_application }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee_leave_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee/leave_applications/1 or /employee/leave_applications/1.json
  def update
    respond_to do |format|
      if @employee_leave_application.update(employee_leave_application_params)
        format.html { redirect_to employee_leave_application_url(@employee_leave_application), notice: "Leave application was successfully updated." }
        format.json { render :show, status: :ok, location: @employee_leave_application }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee_leave_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee/leave_applications/1 or /employee/leave_applications/1.json
  def destroy
    @employee_leave_application.destroy!

    respond_to do |format|
      format.html { redirect_to employee_leave_applications_url, notice: "Leave application was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_leave_application
      @employee_leave_application = LeaveApplication.find(params[:id])
    end

    def load_employees
      @employees = Employee.all
    end

    def load_leave_types
      @leave_types = LeaveType.all
    end

    # Only allow a list of trusted parameters through.
    def employee_leave_application_params
      params.require(:leave_application).permit(:employee_id, :leavetype_id, :start_date, :end_date, :reason)
    end
end
