class Admin::EmployeesController < AdminController
  before_action :set_admin_employee, only: %i[ show edit update destroy ]
  before_action :load_departments

  
  def index
    @admin_employees = Employee.all
    
    #@pagy, @admin_employees = pagy(Employee.all, items: 10)
  end

  
  def show
  end

  def new
    @department = Department.order(:name)
    @admin_employee = Employee.new
  end

  
  def edit
  end

  
  def create
    @admin_employee = Employee.new(admin_employee_params)
    respond_to do |format|
      if @admin_employee.save
        EmployeeMailer.with(employee: @employee).notify_employee.deliver_later
        
        format.html { redirect_to admin_employee_url(@admin_employee), notice: "Employee was successfully created." }
        format.json { render :show, status: :created, location: @admin_employee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # update
  def update
    respond_to do |format|
      if @admin_employee.update(admin_employee_params)
        format.html { redirect_to admin_employee_url(@admin_employee), notice: "Employee was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_employee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE
  def destroy
    @admin_employee.destroy!

    respond_to do |format|
      format.html { redirect_to admin_employees_url, notice: "Employee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_employee
      @admin_employee = Employee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_employee_params
      params.require(:employee).permit(:last_name, :first_name, :email, :position, :department_id, :password, :password_confirmation)
    end

    def load_departments
      @departments = Department.all
    end
end
