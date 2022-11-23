class Booking < ApplicationRecord
  STATUS = ["pending", "accepted", "declined"]
  belongs_to :user
  belongs_to :experience
  validates :date, presence: true
  validates :status, inclusion: { in: STATUS }
end
