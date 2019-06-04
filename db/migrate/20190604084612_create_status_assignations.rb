class CreateStatusAssignations < ActiveRecord::Migration[5.2]
  def change
    create_table :status_assignations do |t|

      t.timestamps
    end
  end
end
