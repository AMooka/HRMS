class Employee < ApplicationRecord

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "department_id", "email", "first_name", "id", "last_name", "position", "updated_at"]
    end
    
    belongs_to :department, optional: true
    has_many :appraisals
    has_many :leave_applications

    has_one :user, dependent: :destroy  # Consider dependent behavior carefully
end