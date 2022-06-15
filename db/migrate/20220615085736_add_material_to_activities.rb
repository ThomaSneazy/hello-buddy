class AddMaterialToActivities < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :material, :string
  end
end
