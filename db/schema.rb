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

ActiveRecord::Schema.define(version: 20150924232012) do

  create_table "capabilities", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "capabilities_gadgets", force: :cascade do |t|
    t.integer  "capability_id"
    t.integer  "gadget_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "capabilities_gadgets", ["capability_id"], name: "index_capabilities_gadgets_on_capability_id"
  add_index "capabilities_gadgets", ["gadget_id"], name: "index_capabilities_gadgets_on_gadget_id"

  create_table "gadgets", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.float    "cost"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "superheros", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
