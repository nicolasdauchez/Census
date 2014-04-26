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

ActiveRecord::Schema.define(version: 20140425222740) do

  create_table "assignements", force: true do |t|
    t.integer  "module_classes_key"
    t.string   "name"
    t.text     "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "module_classes", force: true do |t|
    t.string   "name"
    t.integer  "lecturer_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "module_students", force: true do |t|
    t.integer  "user_id"
    t.integer  "module_classes_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "sex"
    t.integer  "age"
    t.string   "adress_street"
    t.string   "adress_city"
    t.string   "state"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "records", force: true do |t|
    t.integer  "assignement_key"
    t.integer  "student_key"
    t.integer  "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.integer  "key_student"
    t.float    "result"
    t.boolean  "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",                 default: 0
    t.string   "name",                   default: ""
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
