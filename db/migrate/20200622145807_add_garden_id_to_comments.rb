class AddGardenIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :garden_id, :integer
  end
end
