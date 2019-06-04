class AddColumnToEvent < ActiveRecord::Migration[5.2]
  def change
        add_column :events, :name, :string
    add_column :events, :localisation, :string
    add_column :events, :description, :string
  end
end
