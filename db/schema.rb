# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_08_003628) do

  create_table "sneakers", force: :cascade do |t|
    t.string "brand"
    t.string "colorway"
    t.string "gender"
    t.string "releaseDate"
    t.integer "retailPrice"
    t.string "title"
    t.integer "year"
    t.string "imageUrl"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_sneakers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "sneaker_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sneaker_id"], name: "index_user_sneakers_on_sneaker_id"
    t.index ["user_id"], name: "index_user_sneakers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_sneakers", "sneakers"
  add_foreign_key "user_sneakers", "users"
end
