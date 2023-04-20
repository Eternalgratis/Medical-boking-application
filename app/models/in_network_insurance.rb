class InNetworkInsurance < ApplicationRecord
  belongs_to :office
  validates :insurance_name, presence: true
end
