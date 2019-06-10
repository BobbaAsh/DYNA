class Event < ApplicationRecord
  has_many :participations
  has_many :user, through: :participation
<<<<<<< HEAD
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
=======
  mount_uploader :photo, PhotoUploader
>>>>>>> 552d86751225538c5032dd6ec2fb242c6730cd60
end
