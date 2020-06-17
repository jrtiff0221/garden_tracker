class AddCommentIdToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :comment_id, :integer
  end
end
