FactoryGirl.define do
  factory :poteti_user, class: Poteti::User do
    email 'john@example.com'
    password 'password'

    trait :with_tip do
      tips { build_list(:poteti_tip, 1) }
    end
  end
end
