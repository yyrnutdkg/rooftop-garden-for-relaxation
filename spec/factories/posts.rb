FactoryBot.define do
  factory :post do
    title {"コメントテスト"}
    description {"コメント投稿のテストです。"}
    association :user
    association :place
  end
end
