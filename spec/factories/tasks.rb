FactoryGirl.define do
  factory :task do
    title Faker::Lorem.sentence
    status "Todo"
  end
end
