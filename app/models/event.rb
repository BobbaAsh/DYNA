class Event < ApplicationRecord
  has_many :participations
  has_many :user, through: :participation
end
