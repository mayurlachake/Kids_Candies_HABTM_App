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

ActiveRecord::Schema.define(version: 2019_11_19_185945) do

  create_table "candies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "candies_kids", force: :cascade do |t|
    t.integer "kid_id", null: false
    t.integer "candy_id", null: false
    t.index ["candy_id"], name: "index_candies_kids_on_candy_id"
    t.index ["kid_id"], name: "index_candies_kids_on_kid_id"
  end

  create_table "kids", force: :cascade do |t|
    t.string "fisrtname"
    t.string "lastname"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "candies_kids", "candies"
  add_foreign_key "candies_kids", "kids"
end
