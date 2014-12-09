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

ActiveRecord::Schema.define(version: 20141208120205) do

  create_table "dates_schedules", force: true do |t|
    t.string   "classroom",  null: false
    t.datetime "timestamp",  null: false
    t.integer  "shedule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dates_schedules", ["shedule_id"], name: "index_dates_schedules_on_shedule_id"

  create_table "departments", force: true do |t|
    t.integer  "number",        null: false
    t.string   "name",          null: false
    t.string   "zav_kaf",       null: false
    t.string   "secretary",     null: false
    t.string   "director",      null: false
    t.integer  "study_year_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departments", ["study_year_id"], name: "index_departments_on_study_year_id"

  create_table "departments_users", id: false, force: true do |t|
    t.integer "department_id", null: false
    t.integer "user_id",       null: false
  end

  create_table "disciplines", force: true do |t|
    t.string   "name",          null: false
    t.string   "subject",       null: false
    t.string   "subject_short"
    t.string   "semester",      null: false
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "disciplines", ["person_id"], name: "index_disciplines_on_person_id"

  create_table "graphic_types", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "graphic_types", ["name"], name: "index_graphic_types_on_name", unique: true

  create_table "graphics", force: true do |t|
    t.date     "date_from",        null: false
    t.date     "date_to",          null: false
    t.boolean  "is_active",        null: false
    t.integer  "department_id",    null: false
    t.integer  "graphic_types_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "first_name",    null: false
    t.string   "second_name",   null: false
    t.string   "last_name",     null: false
    t.string   "login",         null: false
    t.string   "post",          null: false
    t.integer  "external_id"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["department_id"], name: "index_people_on_department_id"
  add_index "people", ["login"], name: "index_people_on_login", unique: true

  create_table "schedules", force: true do |t|
    t.integer  "graphic_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["graphic_id"], name: "index_schedules_on_graphic_id"
  add_index "schedules", ["group_id"], name: "index_schedules_on_group_id"

  create_table "study_years", force: true do |t|
    t.string   "name",       null: false
    t.boolean  "is_current", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "study_years", ["name"], name: "index_study_years_on_name", unique: true

  create_table "users", force: true do |t|
    t.string   "username",         null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "first_name",       null: false
    t.string   "second_name",      null: false
    t.string   "last_name",        null: false
    t.string   "description"
    t.boolean  "is_operator"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weeks_schedules", force: true do |t|
    t.integer  "day",        null: false
    t.string   "classroom",  null: false
    t.boolean  "week_type",  null: false
    t.date     "date_from",  null: false
    t.date     "date_to",    null: false
    t.time     "time_p",     null: false
    t.integer  "shedule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "weeks_schedules", ["shedule_id"], name: "index_weeks_schedules_on_shedule_id"

end
