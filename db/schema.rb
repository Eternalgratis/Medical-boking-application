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

ActiveRecord::Schema[7.0].define(version: 2023_04_20_184907) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_booking_channels", force: :cascade do |t|
    t.string "app_booking_channel_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointment_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "office_id", null: false
    t.bigint "appointment_status_id", null: false
    t.bigint "app_booking_channel_id", null: false
    t.time "probable_start_time"
    t.time "actual_end_time"
    t.date "appointment_taken_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_booking_channel_id"], name: "index_appointments_on_app_booking_channel_id"
    t.index ["appointment_status_id"], name: "index_appointments_on_appointment_status_id"
    t.index ["office_id"], name: "index_appointments_on_office_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "client_reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "doctor_id", null: false
    t.string "is_review_anonymous"
    t.integer "wait_time_rating"
    t.integer "bedside_manner_rating"
    t.integer "overall_rating"
    t.string "review"
    t.string "is_doctor_recommended"
    t.date "review_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_client_reviews_on_doctor_id"
    t.index ["user_id"], name: "index_client_reviews_on_user_id"
  end

  create_table "doctor_specializations", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "specialization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_doctor_specializations_on_doctor_id"
    t.index ["specialization_id"], name: "index_doctor_specializations_on_specialization_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "professional_statement"
    t.date "practicing_from"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospital_affiliations", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.string "hospital_name"
    t.string "city"
    t.string "country"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_hospital_affiliations_on_doctor_id"
  end

  create_table "in_network_insurances", force: :cascade do |t|
    t.bigint "office_id", null: false
    t.string "insurance_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["office_id"], name: "index_in_network_insurances_on_office_id"
  end

  create_table "office_doctor_availabilities", force: :cascade do |t|
    t.bigint "office_id", null: false
    t.string "day_of_week"
    t.datetime "start_time", precision: nil
    t.datetime "end_time", precision: nil
    t.string "is_available"
    t.string "reason_of_unavailability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["office_id"], name: "index_office_doctor_availabilities_on_office_id"
  end

  create_table "offices", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "hospital_affiliation_id", null: false
    t.integer "time_slot_per_client_in_min"
    t.decimal "first_consultation_fee"
    t.decimal "followup_consultation_fee"
    t.string "street_address"
    t.string "country"
    t.string "state"
    t.string "city"
    t.integer "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_offices_on_doctor_id"
    t.index ["hospital_affiliation_id"], name: "index_offices_on_hospital_affiliation_id"
  end

  create_table "qualifications", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.string "qualification_name"
    t.string "institute_name"
    t.date "procurement_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_qualifications_on_doctor_id"
  end

  create_table "specializations", force: :cascade do |t|
    t.string "specialization_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "contact_number", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "app_booking_channels"
  add_foreign_key "appointments", "appointment_statuses"
  add_foreign_key "appointments", "offices"
  add_foreign_key "appointments", "users"
  add_foreign_key "client_reviews", "doctors"
  add_foreign_key "client_reviews", "users"
  add_foreign_key "doctor_specializations", "doctors"
  add_foreign_key "doctor_specializations", "specializations"
  add_foreign_key "hospital_affiliations", "doctors"
  add_foreign_key "in_network_insurances", "offices"
  add_foreign_key "office_doctor_availabilities", "offices"
  add_foreign_key "offices", "doctors"
  add_foreign_key "offices", "hospital_affiliations"
  add_foreign_key "qualifications", "doctors"
end
