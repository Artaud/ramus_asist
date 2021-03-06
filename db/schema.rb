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

ActiveRecord::Schema.define(version: 20140425162619) do

  create_table "asistents", force: true do |t|
    t.string   "jmeno"
    t.string   "prijmeni"
    t.string   "email"
    t.integer  "telefon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "osobas", force: true do |t|
    t.string   "jmeno"
    t.string   "prijmeni"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prace_polozkas", force: true do |t|
    t.integer  "osoba_id"
    t.integer  "projekt_id"
    t.date     "datum"
    t.text     "obsah"
    t.float    "hodiny"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projekts", force: true do |t|
    t.string   "nazev"
    t.integer  "kod"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.integer  "osoba_id"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
