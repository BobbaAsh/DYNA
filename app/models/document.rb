class Document < ApplicationRecord
  belongs_to :task
  belongs_to :participation
  belongs_to :user,
end
