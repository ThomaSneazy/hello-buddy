class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.text :description
      t.text :location
      t.string :meeting_point
      t.integer :difficulty
      t.string :max_of_participant

      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
