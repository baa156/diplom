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

ActiveRecord::Schema.define(version: 20141105175146) do

  create_table "departments", force: true do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "zav_kaf"
    t.string   "secretary"
    t.string   "director"
    t.integer  "study_year_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departments", ["study_year_id"], name: "index_departments_on_study_year_id"

  create_table "graphic_types", force: true do |t|
    t.string   "name"
    t.integer  "graphic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "graphics", force: true do |t|
    t.date     "date_from"
    t.date     "date_to"
    t.boolean  "is_activ"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "study_years", force: true do |t|
    t.string   "name"
    t.boolean  "is_current"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.string   "last_name"
    t.string   "login"
    t.string   "password_digest"
    t.string   "description"
    t.boolean  "is_operator"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end