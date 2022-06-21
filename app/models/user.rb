class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :messages
  has_many :activities

  def pending_bookings_number
    pending_bookings = []
    user_activities = self.activities
    user_activities.each do |activity|
      activity.bookings.each do |booking|
        if !booking.validated && !booking.refused
          pending_bookings << booking
        end
      end
    end
    return pending_bookings.count
  end
end
