class Specialization < ApplicationRecord
    has_many :doctor_specialization
    belongs_to :doctor, through: :doctor_specialization
    validates :specialization_name
end
