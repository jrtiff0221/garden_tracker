class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.integer :user_id
      t.integer :comment_id
      t.integer :garden_id
      t.string :garden_name
      t.integer :rate

      t.timestamps
    end
  end
end
