class Task < ApplicationRecord
  has_many :task_assignations
  has_many :documents
end
