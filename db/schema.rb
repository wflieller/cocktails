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

ActiveRecord::Schema.define(version: 20150623165531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drinks", force: :cascade do |t|
    t.string   "name",       null: false
    t.text     "directions", null: false
    t.string   "picture"
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "drinks", ["user_id"], name: "index_drinks_on_user_id", using: :btree

  create_table "drinks_ingredients", id: false, force: :cascade do |t|
    t.integer "drink_id",      null: false
    t.integer "ingredient_id", null: false
  end

  add_index "drinks_ingredients", ["drink_id", "ingredient_id"], name: "index_drinks_ingredients_on_drink_id_and_ingredient_id", using: :btree
  add_index "drinks_ingredients", ["ingredient_id", "drink_id"], name: "index_drinks_ingredients_on_ingredient_id_and_drink_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.boolean "alcoholic", null: false
    t.string  "name",      null: false
    t.string  "brand"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree

end
