class AddIndexToProduce < ActiveRecord::Migration[6.0]
  def change
    add_index :produces, [:produce_name, :category]
  end
end
