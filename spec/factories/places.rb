FactoryBot.define do
  factory :place do
    sequence(:name, "place_name_1")
    description {"place_description"}
    fee {1000}
    start_time {Time.current}
    end_time {Time.current + 60}

    trait :with_tag do
      transient do
        sequence(:tag_name) { |n| "test_tag_name_#{n}" }
      end

      after(:build) do |place, evaluator|
        place.tags << build(:tag, name: evaluator.tag_name)
      end
    end
  end
end
