# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_09_11_012153) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string "species"
    t.string "breed"
    t.date "birthdate"
    t.decimal "initial_weight"
    t.string "gender"
    t.string "status"
    t.date "acquisition_date"
    t.string "supplier"
    t.text "health_history"
    t.text "production"
    t.text "comments"
    t.bigint "corral_id", null: false
    t.bigint "ranch_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["corral_id"], name: "index_animals_on_corral_id"
    t.index ["ranch_id"], name: "index_animals_on_ranch_id"
  end

  create_table "corrals", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
    t.string "tipo"
    t.bigint "ranch_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ranch_id"], name: "index_corrals_on_ranch_id"
  end

  create_table "ranches", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_ranches_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "role"
    t.bigint "ranch_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["ranch_id"], name: "index_users_on_ranch_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "animals", "corrals"
  add_foreign_key "animals", "ranches"
  add_foreign_key "corrals", "ranches"
  add_foreign_key "ranches", "users"
  add_foreign_key "users", "ranches"
end
