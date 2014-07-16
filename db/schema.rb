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

ActiveRecord::Schema.define(version: 20140716234056) do

  create_table "actors", force: true do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "bio"
    t.date     "born"
    t.string   "timestamps"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actors", ["born"], name: "index_actors_on_born"
  add_index "actors", ["gender"], name: "index_actors_on_gender"
  add_index "actors", ["name"], name: "index_actors_on_name"

  create_table "movies", force: true do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "description"
    t.string   "timestamps"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "movies", ["name"], name: "index_movies_on_name"
  add_index "movies", ["year"], name: "index_movies_on_year"

  create_table "movies_actors", force: true do |t|
    t.integer  "movies_id"
    t.integer  "actors_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
