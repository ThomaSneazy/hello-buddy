class ChangeColumnStartDateAttributetoActivity < ActiveRecord::Migration[6.1]
  def change
    remove_column :activities, :start_date
    remove_column :activities, :end_date
    rename_column :activities, :hour, :start_date
  end
end
