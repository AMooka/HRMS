class AddStatusToJobApplications < ActiveRecord::Migration[7.1]
  def change
    add_column :job_applications, :status, :integer
  end
end
