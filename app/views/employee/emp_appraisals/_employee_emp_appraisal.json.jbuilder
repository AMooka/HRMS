json.extract! employee_emp_appraisal, :id, :employee_id, :department_id, :data_of_appraisal, :achievement, :skills, :strengths, :area_of_improvement, :overal_performance, :additional_comments, :created_at, :updated_at
json.url employee_emp_appraisal_url(employee_emp_appraisal, format: :json)
