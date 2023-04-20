class DoctorSpecialization < ApplicationRecord
  belongs_to :doctor
  belongs_to :specialization, through: :doctor_specialization
end
