class ChangeMaxType < ActiveRecord::Migration[6.1]
  def change
    remove_column :activities, :max_of_participant
    add_column :activities, :max_of_participant, :integer
  end
end
