class Activity < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :title, :description, :meeting_point, :start_date, presence: true
  validates :difficulty, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  geocoded_by :meeting_point
  after_validation :geocode, if: :will_save_change_to_meeting_point?
end
