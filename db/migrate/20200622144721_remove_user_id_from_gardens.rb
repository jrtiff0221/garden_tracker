class RemoveUserIdFromGardens < ActiveRecord::Migration[6.0]
  def change

    remove_column :gardens, :user_id, :integer
  end
end
