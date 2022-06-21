class AddPendingToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :pending, :boolean, default: false
  end
end
