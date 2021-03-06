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

ActiveRecord::Schema.define(version: 20160710083414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "rate"
    t.string   "title"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_comments_on_item_id", using: :btree
  end

  create_table "contact_details", force: :cascade do |t|
    t.integer  "order_id"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_contact_details_on_order_id", using: :btree
  end

  create_table "discounts", force: :cascade do |t|
    t.string   "code"
    t.decimal  "percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "desc"
    t.decimal  "price"
    t.integer  "section_id"
    t.string   "image_url"
    t.integer  "view_count"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name_unsigned"
    t.index ["section_id"], name: "index_items_on_section_id", using: :btree
  end

  create_table "order_details", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "item_id"
    t.integer  "quantity"
    t.decimal  "price"
    t.decimal  "total_price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["item_id"], name: "index_order_details_on_item_id", using: :btree
    t.index ["order_id"], name: "index_order_details_on_order_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.string   "order_number"
    t.decimal  "total_item_price"
    t.integer  "discount_id"
    t.decimal  "discount_price"
    t.decimal  "delivery_cost"
    t.decimal  "total_price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["discount_id"], name: "index_orders_on_discount_id", using: :btree
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "items"
  add_foreign_key "contact_details", "orders"
  add_foreign_key "items", "sections"
  add_foreign_key "order_details", "items"
  add_foreign_key "order_details", "orders"
  add_foreign_key "orders", "discounts"
end
