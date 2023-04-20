class CreateQualifications < ActiveRecord::Migration[7.0]
  def change
    create_table :qualifications do |t|
      t.integer :doctor_id
      t.string :qualification_name
      t.string :institute_name
      t.date :procurement_year

      t.timestamps
    end
  end
end
