class DropCommentHierarchies < ActiveRecord::Migration
  def change
      drop_table :comment_hierarchies

  end
end
