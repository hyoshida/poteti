FactoryGirl.define do
  factory :poteti_user, class: Poteti::User do
    sequence(:name) { |n| "user+#{n.next}" }
    sequence(:email) { |n| "user+#{n.next}@example.com" }
    password 'password'

    trait :with_tip do
      tips { build_list(:poteti_tip, 1) }
    end
  end
end
