class RemoveCommentIdFromGardens < ActiveRecord::Migration[6.0]
  def change

    remove_column :gardens, :comment_id, :integer
  end
end
