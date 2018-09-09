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

ActiveRecord::Schema.define(version: 2018_09_02_162313) do

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.integer "episode_id"
    t.string "opening_crawl"
    t.string "director"
    t.string "producer"
    t.string "release_date"
    t.string "swapi_url"
    t.string "characters", default: "[]"
    t.string "planets", default: "[]"
    t.string "starships", default: "[]"
    t.string "species", default: "[]"
    t.string "vehicles", default: "[]"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "height"
    t.string "mass"
    t.string "hair_color"
    t.string "skin_color"
    t.string "eye_color"
    t.string "birth_year"
    t.string "gender"
    t.string "swapi_url"
    t.string "homeworld"
    t.string "films", default: "[]"
    t.string "vehicles", default: "[]"
    t.string "starships", default: "[]"
    t.string "species", default: "[]"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "rotation_period"
    t.string "orbital_period"
    t.string "diameter"
    t.string "climate"
    t.string "gravity"
    t.string "terrain"
    t.string "surface_water"
    t.string "population"
    t.string "swapi_url"
    t.string "residents", default: "[]"
    t.string "films", default: "[]"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.string "designation"
    t.string "average_height"
    t.string "skin_colors"
    t.string "hair_colors"
    t.string "eye_colors"
    t.string "average_lifespan"
    t.string "language"
    t.string "swapi_url"
    t.string "homeworld"
    t.string "people", default: "[]"
    t.string "films", default: "[]"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "starships", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "manufacturer"
    t.string "cost_in_credits"
    t.string "length"
    t.string "max_atmoshpering_speed"
    t.string "crew"
    t.string "passengers"
    t.string "cargo_capacity"
    t.string "consumables"
    t.string "hyperdrive_rating"
    t.string "MGLT"
    t.string "starship_class"
    t.string "swapi_url"
    t.string "films", default: "[]"
    t.string "pilots", default: "[]"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "manufacturer"
    t.string "cost_in_credits"
    t.string "length"
    t.string "max_atmosphering_speed"
    t.string "crew"
    t.string "passengers"
    t.string "cargo_capacity"
    t.string "consumables"
    t.string "vehicle_class"
    t.string "swapi_url"
    t.string "films", default: "[]"
    t.string "pilots", default: "[]"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
