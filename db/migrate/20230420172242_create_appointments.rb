class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :client_account, null: false, foreign_key: true
      t.references :office, null: false, foreign_key: true
      t.time :probable_start_time
      t.time :actual_end_time
      t.references :appointment_status, null: false, foreign_key: true
      t.date :appointment_taken_date
      t.references :app_booking_channel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
