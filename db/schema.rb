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

ActiveRecord::Schema.define(:version => 20130213013108) do

  create_table "item_to_views", :force => true do |t|
    t.string   "title"
    t.integer  "poi_id"
    t.integer  "compass_heading"
    t.integer  "altitude"
    t.string   "body"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "pois", :force => true do |t|
    t.string   "title"
    t.decimal  "lat"
    t.decimal  "long"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "tour_id"
  end

  create_table "tours", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.decimal  "lat"
    t.decimal  "long"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "score"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
