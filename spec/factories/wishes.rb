FactoryBot.define do
  factory :wish do
    title {Faker::Lorem.sentence}
    association :user
  end
end
