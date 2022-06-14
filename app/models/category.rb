class Category < ApplicationRecord
  has_many :activities
  has_one_attached :photo
  validates :name, uniqueness: true, presence: true
end
