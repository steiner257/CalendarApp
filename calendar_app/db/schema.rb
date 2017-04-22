# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170422195940) do

  create_table "administrates", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "administrates", ["group_id"], name: "index_administrates_on_group_id"
  add_index "administrates", ["user_id"], name: "index_administrates_on_user_id"

  create_table "appointments", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appointments", ["group_id"], name: "index_appointments_on_group_id"
  add_index "appointments", ["user_id"], name: "index_appointments_on_user_id"

  create_table "comprises", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comprises", ["group_id"], name: "index_comprises_on_group_id"
  add_index "comprises", ["user_id"], name: "index_comprises_on_user_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "start_day"
    t.string   "end_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "group_id"
  end

  add_index "events", ["group_id"], name: "index_events_on_group_id"
  add_index "events", ["user_id"], name: "index_events_on_user_id"

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "calendar_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "bio"
  end

  add_index "groups", ["calendar_id"], name: "index_groups_on_calendar_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "nickname"
    t.string   "bio"
    t.string   "hometown"
    t.string   "major"
    t.string   "school"
    t.string   "grade"
    t.string   "job"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
