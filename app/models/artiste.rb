class Artiste < ApplicationRecord
  belongs_to :event, optional: true
  has_many :document
end
