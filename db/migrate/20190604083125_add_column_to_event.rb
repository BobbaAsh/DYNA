class AddColumnToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :name, :string
    add_column :events, :localisation, :string
    add_column :events, :description, :string
    add_column :events, :begin_date, :string
    add_column :events, :end_date, :string
  end
end
