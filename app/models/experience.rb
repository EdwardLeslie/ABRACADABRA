class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :title, presence: true
  validates :photo, presence: false
  validates :description, presence: true
  validates :city, presence: true
  validates :price, presence: true
  validates :duration, presence: true
  validates :category, presence: true
  validates :description, length: { minimum: 10, message: "10 character minimum" }
end
