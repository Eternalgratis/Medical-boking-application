class CreateClientReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :client_reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.string :is_review_anonymous
      t.integer :wait_time_rating
      t.integer :bedside_manner_rating
      t.integer :overall_rating
      t.string :review
      t.string :is_doctor_recommended
      t.date :review_date

      t.timestamps
    end
  end
end
