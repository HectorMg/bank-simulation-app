class Event < ApplicationRecord
  validates :edition, presence: true
  validates :year, numericality: true
end
