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

ActiveRecord::Schema.define(:version => 20120525191640) do

  create_table "beer_me_searches", :force => true do |t|
    t.string   "style"
    t.integer  "acidic"
    t.integer  "clean"
    t.integer  "creamy"
    t.integer  "crisp"
    t.integer  "hoppy"
    t.integer  "malty"
    t.integer  "rich"
    t.integer  "smooth"
    t.integer  "bitter"
    t.integer  "earthy"
    t.integer  "sour"
    t.integer  "spicy"
    t.integer  "sweet"
    t.integer  "tart"
    t.integer  "banana"
    t.integer  "caramel"
    t.integer  "citrus"
    t.integer  "chocolate"
    t.integer  "cloves"
    t.integer  "coffee"
    t.integer  "floral"
    t.integer  "fruity"
    t.integer  "grapefruit"
    t.integer  "lemon"
    t.integer  "nutty"
    t.integer  "pine"
    t.integer  "smoky"
    t.integer  "toffee"
    t.integer  "vanilla"
    t.integer  "wheat"
    t.integer  "belgian"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "beers", :force => true do |t|
    t.string   "name"
    t.integer  "brewery_id"
    t.string   "style"
    t.float    "abv"
    t.float    "ibu"
    t.float    "srm"
    t.integer  "acidic",     :default => 0
    t.integer  "clean",      :default => 0
    t.integer  "creamy",     :default => 0
    t.integer  "crisp",      :default => 0
    t.integer  "hoppy",      :default => 0
    t.integer  "malty",      :default => 0
    t.integer  "rich",       :default => 0
    t.integer  "smooth",     :default => 0
    t.integer  "bitter",     :default => 0
    t.integer  "earthy",     :default => 0
    t.integer  "sour",       :default => 0
    t.integer  "spicy",      :default => 0
    t.integer  "sweet",      :default => 0
    t.integer  "tart",       :default => 0
    t.integer  "banana",     :default => 0
    t.integer  "caramel",    :default => 0
    t.integer  "citrus",     :default => 0
    t.integer  "chocolate",  :default => 0
    t.integer  "cloves",     :default => 0
    t.integer  "coffee",     :default => 0
    t.integer  "floral",     :default => 0
    t.integer  "fruity",     :default => 0
    t.integer  "grapefruit", :default => 0
    t.integer  "lemon",      :default => 0
    t.integer  "nutty",      :default => 0
    t.integer  "pine",       :default => 0
    t.integer  "smoky",      :default => 0
    t.integer  "toffee",     :default => 0
    t.integer  "vanilla",    :default => 0
    t.integer  "wheat",      :default => 0
    t.integer  "belgian",    :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "breweries", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "address"
    t.string   "state"
    t.string   "country"
    t.string   "website"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
