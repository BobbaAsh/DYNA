class Document < ApplicationRecord
  # belongs_to :task
  # belongs_to :participation
  # belongs_to :user
  belongs_to :participations
  mount_uploader :photo, PhotoUploader
end

