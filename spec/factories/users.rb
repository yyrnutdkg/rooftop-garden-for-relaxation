FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "testuser#{n}@example.com"}
    password { 'password' }
    password_confirmation { 'password' }
    sequence(:name) { |n| "test#{n}"}
    user_role { :member }
  end
end
