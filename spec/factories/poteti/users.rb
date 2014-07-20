FactoryGirl.define do
  factory :poteti_user, class: Poteti::User do
    email 'john@example.com'
    password 'password'
  end
end
