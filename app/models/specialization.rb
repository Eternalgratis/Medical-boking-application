class Specialization < ApplicationRecord
    has_many :doctors, through: :doctor_specializations
    validates :specialization_name,  presence: true
end
