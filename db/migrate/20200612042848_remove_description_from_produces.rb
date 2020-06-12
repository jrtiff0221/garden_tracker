class RemoveDescriptionFromProduces < ActiveRecord::Migration[6.0]
  def change

    remove_column :produces, :description, :string
  end
end
