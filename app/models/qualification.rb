class Qualification < ApplicationRecord
  belongs_to :doctor
  validates :qualification_name, :institute_name, :procurement_year, presence: true
end
