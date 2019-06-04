class StatusAssignation < ApplicationRecord
  belongs_to :participation
  belongs_to :statuses
end
