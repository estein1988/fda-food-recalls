# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_09_211515) do

  create_table "recalls", force: :cascade do |t|
    t.string "classification"
    t.string "center_classification_date"
    t.string "report_date"
    t.string "postal_code"
    t.string "termination_date"
    t.string "recall_initiation_date"
    t.string "recall_number"
    t.string "city"
    t.string "more_code_info"
    t.string "event_id"
    t.string "distribution_pattern"
    t.string "openfda"
    t.string "recalling_firm"
    t.string "voluntary_mandated"
    t.string "state"
    t.string "reason_for_recall"
    t.string "initial_firm_notification"
    t.string "status"
    t.string "product_type"
    t.string "country"
    t.string "product_description"
    t.string "code_info"
    t.string "address_1"
    t.string "address_2"
    t.string "product_quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "save_recalls", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "recall_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recall_id"], name: "index_save_recalls_on_recall_id"
    t.index ["user_id"], name: "index_save_recalls_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "save_recalls", "recalls"
  add_foreign_key "save_recalls", "users"
end
