class ClientReview < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates :is_review_anonymous, :wait_time_rating, :bedside_manner_rating,
  :overall_rating, :review, :is_doctor_recommended, :review_date, presence: true
end
