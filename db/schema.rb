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

ActiveRecord::Schema.define(version: 2020_10_05_231328) do

  create_table "caretakers", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "setting"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dog_users", force: :cascade do |t|
    t.integer "dog_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dog_id"], name: "index_dog_users_on_dog_id"
    t.index ["user_id"], name: "index_dog_users_on_user_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.date "rescue_date"
    t.integer "age"
    t.string "gender"
    t.string "breed"
    t.boolean "house_trained"
    t.string "good_with"
    t.string "size"
    t.text "bio"
    t.string "medication"
    t.integer "caretaker_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
