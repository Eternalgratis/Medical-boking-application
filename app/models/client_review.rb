class ClientReview < ApplicationRecord
  belongs_to :user, through: :user
  belongs_to :doctor, through: :doctor
  validates :is_review_anonymous, :wait_time_waiting, :bedside_manner_rating,
  :overall_rating, :review, :is_doctor_recommended, :review_date, presence: true
end
