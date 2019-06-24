class Artiste < ApplicationRecord
  belongs_to :event, optional: true
end
