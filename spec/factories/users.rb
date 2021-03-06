# spec/factories/users.rb

FactoryGirl.define do
  factory :user do
    email    { Faker::Internet.email }
    encrypted_password { Faker::Internet.password }
  end
end
