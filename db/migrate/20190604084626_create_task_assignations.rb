class CreateTaskAssignations < ActiveRecord::Migration[5.2]
  def change
    create_table :task_assignations do |t|

      t.timestamps
    end
  end
end
