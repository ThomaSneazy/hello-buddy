class AddRefusedToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :refused, :boolean, default: false
  end
end
