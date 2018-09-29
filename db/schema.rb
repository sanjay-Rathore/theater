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

ActiveRecord::Schema.define(version: 2018_09_27_125720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Theaters", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "audis", force: :cascade do |t|
    t.integer "num"
    t.integer "no_of_seats"
    t.integer "theater_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "no_of_seats"
    t.integer "show_id"
    t.integer "user_id"
    t.integer "theater_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shows", force: :cascade do |t|
    t.integer "time"
    t.integer "available_seats"
    t.integer "movie_id"
    t.integer "audi_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theaters", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "booking_id"
    t.integer "audi_id"
    t.integer "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "phone_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
