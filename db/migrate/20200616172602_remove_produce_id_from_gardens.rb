class RemoveProduceIdFromGardens < ActiveRecord::Migration[6.0]
  def change

    remove_column :gardens, :produce_id, :integer
  end
end
