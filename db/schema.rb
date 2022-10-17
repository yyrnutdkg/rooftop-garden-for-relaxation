# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_17_154205) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "congestions", force: :cascade do |t|
    t.bigint "place_id", null: false
    t.integer "rate", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_congestions_on_place_id"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "place_id", null: false
    t.string "title", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.index ["place_id"], name: "index_events_on_place_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.text "comment", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "place_tags", force: :cascade do |t|
    t.bigint "place_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_place_tags_on_place_id"
    t.index ["tag_id"], name: "index_place_tags_on_tag_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.integer "fee"
    t.time "start_time"
    t.time "end_time"
    t.text "access"
    t.text "map_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.geography "lonlat", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "place_id", null: false
    t.integer "type"
    t.text "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_posts_on_place_id"
  end

  create_table "stores", force: :cascade do |t|
    t.bigint "place_id", null: false
    t.integer "store_type", default: 0, null: false
    t.string "title", null: false
    t.text "description"
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_stores_on_place_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "user_role"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "congestions", "places"
  add_foreign_key "events", "places"
  add_foreign_key "place_tags", "places"
  add_foreign_key "place_tags", "tags"
  add_foreign_key "posts", "places"
  add_foreign_key "stores", "places"
end
