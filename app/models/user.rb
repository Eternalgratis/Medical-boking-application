class User < ApplicationRecord
  has_many :client_reviews, through: :doctors, dependent: :destroy
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :client_reviews, dependent: :destroy
  validates :first_name, :last_name, :contact_number, :email, presence:true, length: {minimum: 3}

  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
