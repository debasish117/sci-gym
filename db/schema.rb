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

ActiveRecord::Schema[7.0].define(version: 2023_03_13_134610) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "body_types", force: :cascade do |t|
    t.integer "age"
    t.integer "height"
    t.float "weight"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_infos", force: :cascade do |t|
    t.text "address_field_1"
    t.text "address_field_2"
    t.string "contact_number"
    t.string "zip_code"
    t.string "country"
    t.string "state"
    t.string "district"
    t.string "locality"
    t.integer "contactable_id"
    t.string "contactable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contactable_type", "contactable_id"], name: "index_contact_infos_on_contactable_type_and_contactable_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.decimal "price", precision: 8, scale: 2
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscription_plans", force: :cascade do |t|
    t.integer "client_id"
    t.integer "plan_id"
    t.datetime "start_date"
    t.integer "status", default: 0
    t.jsonb "additional_details", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_subscription_plans_on_client_id"
    t.index ["plan_id"], name: "index_subscription_plans_on_plan_id"
  end

end
