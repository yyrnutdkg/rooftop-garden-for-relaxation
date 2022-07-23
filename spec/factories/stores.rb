FactoryBot.define do
  factory :store do
    association :place
    store_type { 0 }
    sequence(:title, "store_title_1")
    description {"store_discription"}
    start_time {Time.current}
    end_time {Time.current + 60}
  end
end
