class Organization < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :market, presence: true
  validates :numerator, numericality: true
  validates :type, presence: true
  belongs_to :event
end
