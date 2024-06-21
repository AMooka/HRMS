class MakeDepartmentIdNullableInEmployees < ActiveRecord::Migration[7.1]
  def change
    change_column_null :employees, :department_id, true
  end
end
