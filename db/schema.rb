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

ActiveRecord::Schema.define(version: 2021_09_06_200407) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrateurs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_administrateurs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_administrateurs_on_reset_password_token", unique: true
  end

  create_table "tickets", force: :cascade do |t|
    t.string "raisonSocial"
    t.string "nom"
    t.string "prenom"
    t.integer "numero"
    t.string "mail"
    t.string "modele"
    t.integer "imei"
    t.string "motdepass"
    t.string "panne"
    t.text "remarque"
    t.integer "total"
    t.integer "accompte"
    t.integer "reduction"
    t.string "garantie"
    t.string "statut"
    t.string "paye"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
