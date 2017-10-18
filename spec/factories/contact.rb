FactoryGirl.define do
  factory :contact do
    name Faker::Name.unique.name
  end
end
