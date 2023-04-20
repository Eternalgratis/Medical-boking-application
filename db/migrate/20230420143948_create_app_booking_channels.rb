class CreateAppBookingChannels < ActiveRecord::Migration[7.0]
  def change
    create_table :app_booking_channels do |t|
      t.string :app_booking_channel_name

      t.timestamps
    end
  end
end
