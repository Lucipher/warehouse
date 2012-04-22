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

ActiveRecord::Schema.define(:version => 20120422083552) do

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "in_order_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "number"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "in_order_id"
  end

  create_table "in_orders", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "product_id"
    t.integer  "number"
    t.integer  "status"
    t.string   "oid"
  end

  create_table "layers", :force => true do |t|
    t.integer  "shelf_id"
    t.integer  "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "available"
    t.integer  "locked"
  end

  create_table "order_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "number"
    t.integer  "order_id"
    t.string   "order_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "out_order_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "out_order_id"
  end

  create_table "out_orders", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "product_id"
    t.integer  "number"
    t.integer  "status"
    t.string   "oid"
  end

  create_table "permissions", :force => true do |t|
    t.integer  "role"
    t.string   "action"
    t.string   "subject"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "pid"
    t.integer  "number"
    t.integer  "supplier_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "shelves", :force => true do |t|
    t.string   "name"
    t.integer  "area_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "storages", :force => true do |t|
    t.integer  "product_id"
    t.integer  "number"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "mobile"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "interface"
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
    t.integer  "role",                   :default => 5
    t.string   "mobile"
    t.string   "address"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
