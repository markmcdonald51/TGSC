# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_11_013303) do

  create_table "assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.integer "assetable_id", null: false
    t.string "assetable_type", limit: 30, null: false
    t.string "type", limit: 30
    t.string "guid", limit: 30
    t.string "public_token", limit: 30
    t.integer "user_id"
    t.integer "sort_order", default: 0
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guid"], name: "index_assets_on_guid"
    t.index ["public_token"], name: "index_assets_on_public_token"
    t.index ["user_id"], name: "index_assets_on_user_id"
  end

  create_table "customers", force: :cascade do |t|
    t.integer "membership_level_id"
    t.string "aasm_state"
    t.date "last_pay_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["membership_level_id"], name: "index_customers_on_membership_level_id"
  end

  create_table "membership_levels", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.text "description"
    t.string "duration"
    t.decimal "usd_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birth_date"
    t.string "email"
    t.string "mobile_phone"
    t.string "full_address"
    t.string "personable_type"
    t.integer "personable_id"
    t.decimal "lat"
    t.decimal "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personable_type", "personable_id"], name: "index_people_on_personable_type_and_personable_id"
  end

end
