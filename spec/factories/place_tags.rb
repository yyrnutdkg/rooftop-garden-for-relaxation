FactoryBot.define do
  factory :place_tag do
    association :place
    association :tag
  end
end
