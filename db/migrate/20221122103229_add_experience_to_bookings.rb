class AddExperienceToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :experience, null: false, foreign_key: true
  end
end
