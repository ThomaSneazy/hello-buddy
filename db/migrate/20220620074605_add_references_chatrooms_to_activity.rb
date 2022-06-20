class AddReferencesChatroomsToActivity < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :activity, foreign_key: true
  end
end
