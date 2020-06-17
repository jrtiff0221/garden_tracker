class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :gardens, :rate, :difficulty_rating

  end
end
