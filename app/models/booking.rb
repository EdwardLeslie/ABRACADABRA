class Booking < ApplicationRecord
  belongs_to :customer, class_name: "User"
  belongs_to :magician, class_name: "User"
  belongs_to :experience
  STATUS = ["pending", "accepted", "declined"]
  validates :date, presence: true
  validates :status, inclusion: { in: STATUS }
end
