class AddEventRefToArtistes < ActiveRecord::Migration[5.2]
  def change
    add_reference :artistes, :event, foreign_key: true
  end
end
