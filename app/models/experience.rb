class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :price, presence: true
  validates :duration, presence: true
  validates :category, presence: true
  validates :description, length: { minimum: 500, message: "500 character minimum" }
end
