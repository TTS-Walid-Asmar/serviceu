class CreateJobLists < ActiveRecord::Migration
  def change
    create_table :job_lists do |t|
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
