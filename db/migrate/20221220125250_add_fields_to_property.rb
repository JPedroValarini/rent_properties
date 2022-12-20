class AddFieldsToProperty < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :price, :decimal
    add_column :properties, :description, :string
    add_column :properties, :address, :string
    add_column :properties, :bedroom, :integer
    add_column :properties, :bathroom, :integer
  end
end
