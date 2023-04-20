class AppointmentStatus < ApplicationRecord
    has_many :appointments
    validates :status, presence: true  
end
