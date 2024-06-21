class Job < ApplicationRecord
    attr_accessor :gender

    has_many :job_applications, dependent: :destroy
end