class Category < ApplicationRecord
  has_many :activities, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :name, uniqueness: true, presence: true
end
