class ChangeUserToCustomer < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :user_id, :customer_id
  end
end
