class CreateAdminJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :admin_jobs do |t|
      t.string :title
      t.string :description
      t.string :roles
      t.string :requirements
      t.date :posting_date
      t.date :expiry_date

      t.timestamps
    end
  end
end
