FactoryBot.define do
  factory :user do
    first_name { "Alex" }
    last_name { "De Minar" }
    email { "email@email.com" }
    role  { "teacher" }
    password { "password" }
  end
end
