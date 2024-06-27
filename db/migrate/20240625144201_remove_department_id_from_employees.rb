class RemoveDepartmentIdFromEmployees < ActiveRecord::Migration[7.1]
  def change
    remove_column :employees, :department_id, :integer
  end
end
