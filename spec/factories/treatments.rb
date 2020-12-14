FactoryBot.define do
  factory :treatment do
    title { Faker::String.random(length: [0, 6]) }
    description { Faker::Lorem.sentence(word_count: 3) }
    establishment { Faker::Lorem.characters(number: 10, min_alpha: 4, min_numeric: 1) }
    type { Faker::String.random }
  end
end
