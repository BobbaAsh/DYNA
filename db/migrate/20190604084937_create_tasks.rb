class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :begin_date
      t.string :end_date

      t.timestamps
    end
  end
end
