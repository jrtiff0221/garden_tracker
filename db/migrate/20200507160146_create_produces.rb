class CreateProduces < ActiveRecord::Migration[6.0]
  def change
    create_table :produces do |t|
      t.string :name
      t.string :category
      t.string :species
      t.integer :number_of_produce
      t.text :description
      t.string :img
      t.integer :produce_id

      t.timestamps
    end
  end
end
