class Department < ApplicationRecord
    validates :name, presence: true
    validates :description,  presence: true

    has_many :employees, dependent: :delete_all
end
