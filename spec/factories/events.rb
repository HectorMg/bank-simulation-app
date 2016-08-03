FactoryGirl.define do
  sequence(:edition) { |n| "Edition #{n}" }
  sequence(:year){ |n| n }
  factory :event do
    edition
    year
  end
end
