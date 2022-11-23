class Booking < ApplicationRecord
  belongs_to :customer, class_name: "User"
  belongs_to :magician, class_name: "User"
  belongs_to :experience
  validates :start_date, presence: true
  validates :end_date, presence: true
end
