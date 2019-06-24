class AddColumnToArtiste < ActiveRecord::Migration[5.2]
  def change
    add_column :artistes, :name, :string
    add_column :artistes, :price, :float
    add_column :artistes, :numberofmember, :integer
    add_column :artistes, :contact, :string
  end
end
