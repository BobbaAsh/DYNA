class Document < ApplicationRecord
  belongs_to :task
  belongs_to :participation

end
