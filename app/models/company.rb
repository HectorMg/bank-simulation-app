class Company < Organization
  validates :market, presence: true
  validates :numerator, numericality: true
end

