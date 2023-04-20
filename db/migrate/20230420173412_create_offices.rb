class CreateOffices < ActiveRecord::Migration[7.0]
  def change
    create_table :offices do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :hospital_affiliation, null: false, foreign_key: true
      t.integer :time_slot_per_client_in_min
      t.decimal :first_consultation_fee
      t.decimal :followup_consultation_fee
      t.string :street_address
      t.string :country
      t.string :state
      t.string :city
      t.integer :zip

      t.timestamps
    end
  end
end
