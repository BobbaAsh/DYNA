class TaskAssignation < ApplicationRecord
  belongs_to :participation
  belongs_to :task
end
