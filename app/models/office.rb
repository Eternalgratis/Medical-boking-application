class Office < ApplicationRecord
  belongs_to :doctor
  belongs_to :hospital_affiliation
  has_many :office_doctor_availabilities, :in_network_insurances, :appointments
  validates :time_slot_per_client_in_min, :first_consultation_fee,
            :followup_consultation_fee, :street_address, :city, :state, :country, presence: true
end
