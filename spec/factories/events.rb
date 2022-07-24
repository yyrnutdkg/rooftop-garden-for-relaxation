FactoryBot.define do
  factory :event do
    association :place
    sequence(:title, "event_title_1")
    description {"event_discription"}
    start_time {Time.current}
    end_time {Time.current + 60}
  end
end
