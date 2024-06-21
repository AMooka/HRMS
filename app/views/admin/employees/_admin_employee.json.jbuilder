json.extract! admin_employee, :id, :last_name, :first_name, :email, :position, :department_id, :created_at, :updated_at
json.url admin_employee_url(admin_employee, format: :json)
