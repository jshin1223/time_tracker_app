class CreateMarkers < ActiveRecord::Migration[6.0]
  def change
    create_table :markers do |t|
      t.integer :user_id
      t.integer :activity_id
      t.datetime :end_time

      t.timestamps
    end
  end
end
