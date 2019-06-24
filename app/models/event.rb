class Event < ApplicationRecord
  has_many :artistes
  has_many :participations
  has_many :user, through: :participation
  mount_uploader :photo, PhotoUploader
end
