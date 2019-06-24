class CreateArtistes < ActiveRecord::Migration[5.2]
  def change
    create_table :artistes do |t|

      t.timestamps
    end
  end
end
