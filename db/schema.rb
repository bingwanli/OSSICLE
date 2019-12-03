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

ActiveRecord::Schema.define(version: 2019_12_03_060719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "moodboards", force: :cascade do |t|
    t.string "shoe_type"
    t.boolean "is_finished"
    t.integer "votes"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "detail"
    t.index ["user_id"], name: "index_moodboards_on_user_id"
  end

  create_table "shoes", force: :cascade do |t|
    t.bigint "moodboard_id"
    t.bigint "user_id"
    t.integer "votes"
    t.text "photo_url"
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["moodboard_id"], name: "index_shoes_on_moodboard_id"
    t.index ["user_id"], name: "index_shoes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prof_pic"
    t.string "name"
    t.integer "designer"
    t.string "bio"
    t.string "portfolio"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "moodboards", "users"
  add_foreign_key "shoes", "moodboards"
  add_foreign_key "shoes", "users"
end
