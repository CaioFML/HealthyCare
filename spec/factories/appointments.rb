FactoryBot.define do
  factory :appointment do
    professional { Faker::Name.name }
    date_time { 5.days.from_now }
    specialty { "Clinico Geral" }
    complaints { Faker::Lorem.paragraph }
    diagnostics { Faker::Lorem.paragraph }
    profile
  end
end
