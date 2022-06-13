class AddColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :description, :string
    add_column :users, :birth_date, :date
  end
end
