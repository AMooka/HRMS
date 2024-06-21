class AddGenderToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :gender, :string
  end
end
