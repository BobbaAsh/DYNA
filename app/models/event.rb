class Event < ApplicationRecord
  has_many :participation
  has_many :user, through: :participation
end
