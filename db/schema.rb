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

ActiveRecord::Schema.define(version: 20151122221319) do

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "subcategory"
    t.string   "description"
    t.boolean  "sunday_morning"
    t.boolean  "sunday_afternoon"
    t.boolean  "sunday_evening"
    t.boolean  "monday_morning"
    t.boolean  "monday_afternoon"
    t.boolean  "monday_evening"
    t.boolean  "tuesday_morning"
    t.boolean  "tuesday_afternoon"
    t.boolean  "tuesday_evening"
    t.boolean  "wednesday_morning"
    t.boolean  "wednesday_afternoon"
    t.boolean  "wednesday_evening"
    t.boolean  "thursday_morning"
    t.boolean  "thursday_afternoon"
    t.boolean  "thursday_evening"
    t.boolean  "friday_morning"
    t.boolean  "friday_afternoon"
    t.boolean  "friday_evening"
    t.boolean  "saturday_morning"
    t.boolean  "saturday_afternoon"
    t.boolean  "saturday_evening"
    t.string   "website"
    t.string   "price_range"
    t.integer  "neighborhood_id"
    t.integer  "minutes_from_ada"
    t.string   "method"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
