json.extract! admin_job, :id, :title, :description, :roles, :requirements, :posting_date, :expiry_date, :created_at, :updated_at
json.url admin_job_url(admin_job, format: :json)
