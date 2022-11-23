class AddMagicianToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :magician_id, :integer
  end
end
