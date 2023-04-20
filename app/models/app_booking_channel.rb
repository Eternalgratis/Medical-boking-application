class AppBookingChannel < ApplicationRecord
    has_many :appointments
    validates: :app_booking_channel_name, presence:true
end
