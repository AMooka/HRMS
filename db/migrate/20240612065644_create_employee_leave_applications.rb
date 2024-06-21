class CreateEmployeeLeaveApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :leave_applications do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :leavetype, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :reason

      t.timestamps
    end
  end
end
