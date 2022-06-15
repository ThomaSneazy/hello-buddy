class ChangeColumnDateAndHour < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :hour, :datetime
  end
end
