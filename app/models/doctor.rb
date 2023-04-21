class Doctor < ApplicationRecord
    has_many :hospital_affiliations
    has_many :offices
    has_many :qualifications
    has_many :doctor_specialization
    has_many :specializations, through: :doctor_specializations

    validates :first_name, :last_name, :professional_statement, 
    :practicing_from, presence:true
end
