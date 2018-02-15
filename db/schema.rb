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

ActiveRecord::Schema.define(version: 20180205161149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bikes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "date"
    t.string "meta_title"
    t.string "meta_description"
    t.string "permalink"
    t.boolean "no_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manufacturer_id"
  end

  create_table "bodies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "date"
    t.string "meta_title"
    t.string "meta_description"
    t.string "permalink"
    t.boolean "no_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "date"
    t.string "meta_title"
    t.string "meta_description"
    t.string "permalink"
    t.boolean "no_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manufacturer_id"
    t.integer "modell_id"
    t.integer "body_id"
    t.integer "engine_id"
    t.integer "fuel_id"
    t.integer "fuel_efficiency_id"
    t.integer "speed_id"
  end

  create_table "engines", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.decimal "litre"
    t.text "description"
    t.integer "cylinder"
    t.integer "valve"
    t.integer "hp"
    t.integer "kw"
    t.integer "torque"
    t.date "production_start"
    t.date "production_end"
    t.string "country"
    t.string "type"
    t.integer "mark"
    t.string "fuel_system"
    t.string "meta_title"
    t.string "meta_description"
    t.string "permalink"
    t.boolean "no_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manufacturer_id"
  end

  create_table "fuel_efficiencies", force: :cascade do |t|
    t.integer "mpg"
    t.integer "kml"
    t.string "meta_title"
    t.string "meta_description"
    t.string "permalink"
    t.boolean "no_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fuels", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manufacturer_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "date"
    t.string "meta_string"
    t.string "meta_description"
    t.string "permalink"
    t.boolean "no_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modells", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "date"
    t.string "meta_title"
    t.string "meta_description"
    t.string "permalink"
    t.boolean "no_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manufacturer_id"
  end

  create_table "speeds", force: :cascade do |t|
    t.float "sixty"
    t.float "hundered"
    t.integer "top"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
