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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120606200745) do

  create_table "branches", :force => true do |t|
    t.string   "address",     :limit => 100
    t.string   "commune",     :limit => 50
    t.string   "city",        :limit => 50
    t.integer  "pharmacy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "branches", ["pharmacy_id"], :name => "index_branches_on_pharmacy_id"

  create_table "items", :force => true do |t|
    t.integer  "Medicine_id"
    t.integer  "PriceList_id"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["Medicine_id"], :name => "index_items_on_Medicine_id"
  add_index "items", ["PriceList_id"], :name => "index_items_on_PriceList_id"

  create_table "medicines", :force => true do |t|
    t.string   "name",       :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pharmacies", :force => true do |t|
    t.string   "name",       :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "pharmacies", ["slug"], :name => "index_pharmacies_on_slug"

  create_table "price_lists", :force => true do |t|
    t.string   "name",       :limit => 50
    t.integer  "branch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "price_lists", ["branch_id"], :name => "index_price_lists_on_branch_id"

end
