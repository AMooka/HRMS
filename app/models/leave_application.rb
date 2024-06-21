class LeaveApplication < ApplicationRecord
    belongs_to :employee
    belongs_to :leave_type
  end