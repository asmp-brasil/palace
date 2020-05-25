# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end

  factory :medic do
    name { Faker::Name.name }
    crm { Faker::Number.leading_zero_number(6) }
    phone { Faker::PhoneNumber.phone_number }
    email { Faker::Internet.email }
  end
end
