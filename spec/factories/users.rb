FactoryBot.define do
  factory :user do
    first_name { "Alex" }
    last_name { "De Minar" }
    email { "email@email.com" }
    password { "password" }
  end
end
