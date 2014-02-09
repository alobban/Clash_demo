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

ActiveRecord::Schema.define(version: 20140208215622) do

  create_table "counties", force: true do |t|
    t.string   "county_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: true do |t|
    t.string   "landlord",                              null: false
    t.text     "rental_desc",                           null: false
    t.integer  "bedroom",     default: 0
    t.float    "bathroom",    default: 1.0
    t.string   "rate",        default: "Call For Rent"
    t.string   "phone",       default: "999-9999"
    t.string   "town",                                  null: false
    t.integer  "parish_id"
    t.integer  "county_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parishes", force: true do |t|
    t.string   "parish_name"
    t.integer  "county_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
