class Category < ApplicationRecord
  has_many :activities
  has_many :bookings
  has_one_attached :photo
  validates :name, uniqueness: true, presence: true
end
