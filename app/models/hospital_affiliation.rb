class HospitalAffiliation < ApplicationRecord
  belongs_to :doctor
  has_many :doctors
  has_many :offices, through: :doctors
  validates :hospital_name, :country, :city, :start_date, :end_date, presence:true
end
