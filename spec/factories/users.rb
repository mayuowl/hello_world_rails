FactoryBot.define do
  factory :user do
    _account = Faker::Internet.username

    name { Faker::Name.name }
    sequence(:account) { |n| "#{n}_#{_account}" }
    sequence(:email) { |n| Faker::Internet.email("#{n}_#{_account}") }

    trait :with_user_detail do
      user_detail
    end
  end
end
