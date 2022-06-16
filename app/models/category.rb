class Category < ApplicationRecord
  has_many :activities
  has_many :bookings
  has_one_attached :photo
  validates :name, uniqueness: true, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_name,
                  against: :name,
                  using: {
      tsearch: { prefix: true }
    }
end
