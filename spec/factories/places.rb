FactoryBot.define do
  factory :place do
    sequence(:name, "place_name_1")
    description {"place_description"}
    fee {1000}
    start_time {Time.current}
    end_time {Time.current + 60}
  end
end
