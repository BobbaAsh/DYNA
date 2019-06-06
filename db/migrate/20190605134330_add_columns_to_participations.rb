class AddColumnsToParticipations < ActiveRecord::Migration[5.2]
  def change
    add_column :participations, :user_id, :string
    add_column :participations, :event_id, :string
    add_column :participations, :wanted_status, :string
    add_column :participations, :status, :boolean
end
