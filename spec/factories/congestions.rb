FactoryBot.define do
  factory :congestion do
    association :place
    rate {60}
  end
end
