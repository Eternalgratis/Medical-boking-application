class OfficeDoctorAvailability < ApplicationRecord
  belongs_to :office
  validates :day_of_week, :start_time, :end_time, :is_available,
  :reason_of_unavailability, presence: true
end
