class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :gardens, :rating, :difficulty_rating
  end
end
