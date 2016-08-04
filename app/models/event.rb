class Event < ApplicationRecord
  validates :edition, presence: true
  validates :year, numericality: true
  has_many :organizations
  has_many :companies
  has_one :bank
end
