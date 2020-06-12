class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    #rename_column :table_name, :old_column, :new_column
    rename_column :produces,  :name,  :produce_name
  end
end
