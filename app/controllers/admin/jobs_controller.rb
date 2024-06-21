class Admin::JobsController < AdminController
  before_action :set_admin_job, only: %i[ show edit update destroy ]

  # GET /admin/jobs or /admin/jobs.json
  def index
    @admin_jobs = Job.all
  end

  # GET /admin/jobs/1 or /admin/jobs/1.json
  def show
  end

  # GET /admin/jobs/new
  def new
    @admin_job = Job.new
  end

  # GET /admin/jobs/1/edit
  def edit
  end

  # POST /admin/jobs or /admin/jobs.json
  def create
    @admin_job = Job.new(admin_job_params)

    respond_to do |format|
      if @admin_job.save
        format.html { redirect_to admin_job_url(@admin_job), notice: "Job was successfully created." }
        format.json { render :show, status: :created, location: @admin_job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/jobs/1 or /admin/jobs/1.json
  def update
    respond_to do |format|
      if @admin_job.update(admin_job_params)
        format.html { redirect_to admin_job_url(@admin_job), notice: "Job was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/jobs/1 or /admin/jobs/1.json
  def destroy
    @admin_job.destroy!

    respond_to do |format|
      format.html { redirect_to admin_jobs_url, notice: "Job was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_job
      @admin_job = Job.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_job_params
      params.require(:job).permit(:title, :description, :roles, :requirements, :posting_date, :expiry_date, :gender, :location, :job_type, :experience)
    end

end
