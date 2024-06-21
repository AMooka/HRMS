class Admin::LeaveTypesController < AdminController
  before_action :set_admin_leave_type, only: %i[ show edit update destroy ]

  # GET /admin/leave_types or /admin/leave_types.json
  def index
    @admin_leave_types = LeaveType.all
  end

  # GET /admin/leave_types/1 or /admin/leave_types/1.json
  def show
    @admin_leave_type = LeaveType.find(params[:id])
  end

  # GET /admin/leave_types/new
  def new
    @admin_leave_type = LeaveType.new
  end

  # GET /admin/leave_types/1/edit
  def edit
  end

  # POST /admin/leave_types or /admin/leave_types.json
  def create
    @admin_leave_type = LeaveType.new(admin_leave_type_params)

    respond_to do |format|
      if @admin_leave_type.save
        format.html { redirect_to admin_leave_type_url(@admin_leave_type), notice: "Leave type was successfully created." }
        format.json { render :show, status: :created, location: @admin_leave_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_leave_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/leave_types/1 or /admin/leave_types/1.json
  def update
    respond_to do |format|
      if @admin_leave_type.update(admin_leave_type_params)
        format.html { redirect_to admin_leave_type_url(@admin_leave_type), notice: "Leave type was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_leave_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_leave_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/leave_types/1 or /admin/leave_types/1.json
  def destroy
    @admin_leave_type.destroy!

    respond_to do |format|
      format.html { redirect_to admin_leave_types_url, notice: "Leave type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_leave_type
      @admin_leave_type = LeaveType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_leave_type_params
      params.require(:leave_type).permit(:name, :description)
    end
end
