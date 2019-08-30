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

ActiveRecord::Schema.define(version: 20180502015308) do

  create_table "adminprofiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "date_of_birth"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.string "country"
    t.integer "phone"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bidderprofiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "date_of_birth"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.string "country"
    t.integer "phone"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "biddingtables", force: :cascade do |t|
    t.float "bidding_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "item_id"
    t.integer "bidderprofile_id"
    t.index ["bidderprofile_id"], name: "index_biddingtables_on_bidderprofile_id"
    t.index ["item_id"], name: "index_biddingtables_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "item_name"
    t.float "original_price"
    t.string "auction_price"
    t.string "image_source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.integer "adminprofile_id"
    t.string "status"
    t.index ["adminprofile_id"], name: "index_items_on_adminprofile_id"
  end

end
