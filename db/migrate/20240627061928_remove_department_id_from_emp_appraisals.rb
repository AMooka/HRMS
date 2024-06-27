class RemoveDepartmentIdFromEmpAppraisals < ActiveRecord::Migration[7.1]
  def change
    remove_column :emp_appraisals, :department_id, :integer
  end
end
