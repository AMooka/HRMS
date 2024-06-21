class JobApplication < ApplicationRecord
  belongs_to :job
  has_one_attached :resume

  validates :email, presence: true, uniqueness: true

  enum status: [ :pending, :shortlisted, :cancelled]
end
