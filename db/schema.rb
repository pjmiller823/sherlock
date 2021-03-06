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

ActiveRecord::Schema.define(version: 20170502204514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.string   "home_id"
    t.string   "created_by_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["created_by_id"], name: "index_favorites_on_created_by_id", using: :btree
    t.index ["home_id"], name: "index_favorites_on_home_id", using: :btree
  end

  create_table "files", force: :cascade do |t|
    t.binary "content"
    t.text   "metadata"
  end

  create_table "home_searcheds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "number_of_bedrooms"
    t.integer  "number_of_baths"
    t.integer  "square_footage"
    t.integer  "price"
    t.text     "description"
    t.text     "image_data"
    t.integer  "year_built"
    t.integer  "created_by_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.string   "nickname"
    t.string   "access_token"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "email"
  end

end
