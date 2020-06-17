class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :message
      t.string :commment_id

      t.timestamps
    end
  end
end
