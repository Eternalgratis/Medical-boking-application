class CreateHospitalAffiliations < ActiveRecord::Migration[7.0]
  def change
    create_table :hospital_affiliations do |t|
      t.integer :doctor_id
      t.string :hospital_name
      t.string :city
      t.string :country
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
