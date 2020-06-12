class AddCategoryToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :category, :string
  end
end
