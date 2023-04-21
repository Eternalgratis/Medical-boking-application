class DoctorSpecialization < ApplicationRecord
  belongs_to :doctor
  has_many :doctor_specialization
  belongs_to :specialization, through: :doctor_specialization
end
