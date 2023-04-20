class Specialization < ApplicationRecord
    belongs_to :doctor through: :doctor_specialization
    validates :specialization_name
end
