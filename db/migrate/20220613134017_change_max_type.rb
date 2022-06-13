class ChangeMaxType < ActiveRecord::Migration[6.1]
  def change
    t.integer :max_of_participant
  end
end
