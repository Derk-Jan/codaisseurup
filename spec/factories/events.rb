FactoryGirl.define do
  factory :event do
    name    { Faker::Name.first.name}
    description{ Faker::Lorem.sentence(40) }
    location{ Faker::Adrress.city }

    capacity 100

    includes_food true
    includes_drinks false
    price 100
    starts_at 10.days.from_now
    ends_at at 13.day.from_now
    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
    user_id { buid (:user)}

  end
end
