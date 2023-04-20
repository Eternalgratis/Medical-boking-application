class Doctor < ApplicationRecord
    validates :first_name, :last_name, :professioal_statement, 
    :practicing_from, presence:true

end
