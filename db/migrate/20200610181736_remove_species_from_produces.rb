class RemoveSpeciesFromProduces < ActiveRecord::Migration[6.0]
  def change

    remove_column :produces, :species, :string
  end
end
