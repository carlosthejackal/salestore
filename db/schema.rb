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

ActiveRecord::Schema.define(version: 20160426125652) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_images", force: :cascade do |t|
    t.string   "image_url"
    t.string   "description"
    t.integer  "item_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "item_images", ["item_id"], name: "index_item_images_on_item_id", using: :btree

  create_table "item_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "original_price", precision: 8, scale: 2
    t.integer  "supplier_id"
    t.integer  "item_type_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "items", ["item_type_id"], name: "index_items_on_item_type_id2", using: :btree
  add_index "items", ["supplier_id"], name: "index_items_on_supplier_id2", using: :btree

  create_table "sale_details", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "sale_id"
    t.decimal  "sale_price",       precision: 8, scale: 2
    t.string   "price_per_detail"
    t.integer  "sale_discount"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "sale_details", ["item_id"], name: "index_sale_details_on_item_id", using: :btree
  add_index "sale_details", ["sale_id"], name: "index_sale_details_on_sale_id", using: :btree

  create_table "sales", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "sale_image_url"
    t.date     "from_date"
    t.date     "to_date"
    t.boolean  "still_valid"
    t.integer  "supplier_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "sales", ["supplier_id"], name: "index_sales_on_supplier_id", using: :btree

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "website"
    t.string   "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "supplier_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["supplier_id"], name: "index_users_on_supplier_id", using: :btree

end
