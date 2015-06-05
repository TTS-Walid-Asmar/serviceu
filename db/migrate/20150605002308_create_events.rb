class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :description
      t.integer :cost
      t.text :where
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.date :start_day
      t.date :end_day

      t.timestamps null: false
    end
  end
end
