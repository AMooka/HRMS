class AddExperienceToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :experience, :string
  end
end
