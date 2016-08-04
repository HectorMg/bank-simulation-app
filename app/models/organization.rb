class Organization < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :type, presence: true
  belongs_to :event, dependent: :destroy
end
