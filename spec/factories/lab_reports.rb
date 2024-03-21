FactoryBot.define do
  factory :lab_report do
    # The alias allows us to write user instead of
    # association :user, factory: :user
    user
    title { "Networking" }
    description { "There are five steps to deal with a people." }
    grade { "AA" }
  end
end