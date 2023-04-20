class CreateInNetworkInsurances < ActiveRecord::Migration[7.0]
  def change
    create_table :in_network_insurances do |t|
      t.references :office, null: false, foreign_key: true
      t.string :insurance_name

      t.timestamps
    end
  end
end
