FactoryBot.define do
  factory :exam do
    sequence(:title) { |n| "Title #{n}" }
    date { Faker::Date.between(from: '2020-11-30', to: '2021-12-31') }
    sequence(:establishment) { |n| "Establishment #{n}" }
    description { Faker::Lorem.paragraphs(number: 1) }
    profile_id { %i[1 2 3].sample }
  end
end
