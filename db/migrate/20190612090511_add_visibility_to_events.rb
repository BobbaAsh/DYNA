class AddVisibilityToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :visibility, :boolean
  end
end
