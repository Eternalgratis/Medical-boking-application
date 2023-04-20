class Doctor < ApplicationRecord
    has_many :specializations through: :doctor_specializations, :users,
    :hospital_affiliations, :offices, :qualifications
    validates :first_name, :last_name, :professioal_statement, 
    :practicing_from, presence:true
end
