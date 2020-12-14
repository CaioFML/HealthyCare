FactoryBot.define do
  factory :share do
    profile_shared { Faker::Name.name }
    status { Faker::Lorem.word }
  end
end
