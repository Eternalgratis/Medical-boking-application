class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :first_name, null:false
      t.string :last_name, null:false
      t.string :professional_statement
      t.date :practicing_from

      t.timestamps
    end
  end
end
