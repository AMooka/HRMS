class RenameTableAdminJobsToJobs < ActiveRecord::Migration[7.1]
  def change
    rename_table :admin_jobs, :jobs
  end
end
