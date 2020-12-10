FactoryBot.define do
  factory :profile do
    blood_type { Faker::Blood.type }
    weight { Faker::Number.normal(mean: 90, standard_deviation: 10.5) }
    height { Faker::Number.between(from: 150, to: 190) }
    rh_factor { Faker::Blood.rh_factor }
    name { Faker::Name.name }
    birthday { Faker::Date.birthday(min_age: 18) }
    cell_phone { Faker::PhoneNumber.cell_phone_in_e164 }
    user
  end
end
