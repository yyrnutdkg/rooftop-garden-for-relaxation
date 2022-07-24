# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do |n|
  Place.create!(
    name: "placeテストデータ-#{n}",
    description: "屋上庭園です。",
    fee: "#{n}0000",
    start_time: Time.current,
    end_time: Time.current + 60,
    access: "#{n}番地",
    map_link: "https://#{n}"
  )
end

Place.all.each do |place|
  Event.create!(
    place_id: place.id,
    title: Faker::Marketing.buzzwords,
    description: Faker::Food.description,
    start_time: Time.current,
    end_time: Time.current + 108000
  )
  Congestion.create!(
    place_id: place.id,
    rate: rand(100)
  )
  Store.create!(
    place_id: place.id,
    store_type: "inside",
    title: Faker::Food.dish,
    description: Faker::Food.description,
    start_time: Time.current,
    end_time: Time.current + 180000
  )
  Store.create!(
    place_id: place.id,
    store_type: "outside",
    title: Faker::Food.dish,
    description: Faker::Food.description,
    start_time: Time.current,
    end_time: Time.current + 180000
  )
end

Notification.create!(
  comment: Faker::ProgrammingLanguage.name
)
Tag.create!(
  name: "東京"
)
PlaceTag.create!(
  place_id: 1,
  tag_id: 1
)
