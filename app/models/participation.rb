class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :documents
  has_many :task_assignations
  has_many :status_assignations
end
