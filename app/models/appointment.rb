class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :office
  belongs_to :appointment_status
  belongs_to :app_booking_channel
end
