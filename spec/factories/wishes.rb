FactoryBot.define do
  factory :wish do
    title {Faker::Lorem.sentence}
    due_time {2021-10-24}
    state_id {2}
    association :user

    after(:build) do |wish|
      wish.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.png')
    end
  end
end
