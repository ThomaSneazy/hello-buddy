class Activity < ApplicationRecord
<<<<<<< HEAD
  belongs_to :category
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :title, :description, :meeting_point, :start_date, presence: true
  validates :difficulty, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
=======
  belongs_to :user
  belongs_to :category
  geocoded_by :meeting_point
  after_validation :geocode, if: :will_save_change_to_meeting_point?
>>>>>>> master
end
