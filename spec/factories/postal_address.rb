FactoryGirl.define do
  factory :postal_address do
    address Faker::Address.unique.full_address
  end
end
