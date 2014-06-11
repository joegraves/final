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

ActiveRecord::Schema.define(version: 20140611021709) do

  create_table "breeds", force: true do |t|
    t.string "breed"
    t.string "build"
    t.string "run_type"
    t.string "run_distance"
    t.string "photo_url"
  end

  create_table "dogs", force: true do |t|
    t.string  "name"
    t.string  "sex"
    t.integer "weight"
    t.integer "birth_year"
    t.integer "breed_id"
  end

  create_table "relationships", force: true do |t|
    t.integer "user_id"
    t.integer "dog_id"
    t.string  "relationship"
  end

  create_table "runs", force: true do |t|
    t.date    "date"
    t.float   "distance"
    t.float   "time"
    t.integer "user_id"
    t.integer "dog1_id"
    t.integer "dog2_id"
  end

  create_table "users", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.string  "password"
    t.integer "zip_code"
    t.string  "sex"
    t.integer "birth_year"
  end

end
