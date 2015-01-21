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

ActiveRecord::Schema.define(version: 20150121194549) do

  create_table "assessments", force: true do |t|
    t.string   "installment"
    t.string   "mode"
    t.decimal  "tuition"
    t.decimal  "discount"
    t.text     "discount_desc"
    t.integer  "installment_number"
    t.integer  "or_number"
    t.integer  "student_id"
    t.boolean  "paid_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guardianships", force: true do |t|
    t.integer  "payment_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parents", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "relation"
    t.date     "birthdate"
    t.string   "occupation"
    t.string   "email"
    t.string   "landline"
    t.string   "mobile"
    t.string   "street"
    t.string   "barangay"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requirements", force: true do |t|
    t.string   "name"
    t.boolean  "required"
    t.string   "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.string   "remarks"
    t.decimal  "amount"
    t.integer  "student_id"
    t.integer  "or_number"
    t.boolean  "paid_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_requirements", force: true do |t|
    t.integer  "student_id"
    t.integer  "requirement_id"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.integer  "id_number"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "admission_date"
    t.integer  "batch_number"
    t.string   "year_level"
    t.string   "section"
    t.string   "gender"
    t.date     "birthdate"
    t.string   "nationality"
    t.string   "birth_place"
    t.string   "religion"
    t.string   "street"
    t.string   "barangay"
    t.string   "city"
    t.integer  "postal_code"
    t.string   "country"
    t.boolean  "lancaster_resident"
    t.string   "landline"
    t.string   "mobile"
    t.string   "email"
    t.string   "institution_name"
    t.integer  "school_year"
    t.string   "grade"
    t.integer  "general_avg"
    t.boolean  "enrollment_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tpermits", force: true do |t|
    t.date     "date"
    t.string   "level"
    t.datetime "test_date"
    t.integer  "test_number"
    t.boolean  "status"
    t.text     "remarks"
    t.boolean  "report_card"
    t.boolean  "moral_cert"
    t.boolean  "recommendation"
    t.integer  "student_id"
    t.integer  "or_number"
    t.decimal  "amount"
    t.boolean  "paid_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
