class CreateJobApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :job_applications do |t|
      t.string :name
      t.string :email
      t.string :tel_no
      t.references :job, null: false, foreign_key: true
      t.string :location
      t.text :cover_letter

      t.timestamps
    end
  end
end
