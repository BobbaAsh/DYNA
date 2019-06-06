class AddColumnsToParticipations < ActiveRecord::Migration[5.2]
  def change
    add_column :participations, :user_id, :string
    add_column :participations, :event_id, :string
<<<<<<< HEAD
    add_column :participations, :wanted_status, :string
    add_column :participations, :status, :boolean
=======
        add_column :participations, :wanted_status, :string
>>>>>>> f377ebbde8bae252edfd35489760f9121bf1551d
  end
end
