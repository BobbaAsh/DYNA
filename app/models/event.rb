class Event < ApplicationRecord
  has_many :participations
  has_many :user, through: :participation
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
  mount_uploader :photo, PhotoUploader
end
