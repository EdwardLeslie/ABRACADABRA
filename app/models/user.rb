class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # has_many :bookings, dependent: :destroy, foreign_key: [:magician_id, :customer_id]

  has_many :magician_bookings, class_name: "Booking", foreign_key: "magician_id"
  has_many :customer_bookings, class_name: "Booking", foreign_key: "customer_id"

  has_many :experiences, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum status: {
    pending: 0,
    active: 1,
    archived: 2
  }, _prefix: true
end
