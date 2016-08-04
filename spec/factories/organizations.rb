FactoryGirl.define do
  sequence(:name) { |n| "Oraganization Name #{n}" }
  factory :organization do
    name
    market "MyString"
    numerator 1
    type "Company"
    event { FactoryGirl.create :event }
  end
end
