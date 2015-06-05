class AddCorrectJobidToComment < ActiveRecord::Migration
  def change
    add_column :comments, :job_list_id, :integer
  end
end
