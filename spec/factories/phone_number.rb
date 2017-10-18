FactoryGirl.define do
  factory :phone_number do
    contact
    number Faker::Number.unique.number(10)
  end
end
