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

ActiveRecord::Schema.define(:version => 20121020222359) do

  create_table "allergies", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "drugs", :force => true do |t|
    t.string   "name"
    t.string   "strengths"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patient_drugs", :force => true do |t|
    t.integer  "patient_id"
    t.integer  "drug_id"
    t.string   "breakfast_dose"
    t.string   "lunch_dose"
    t.string   "supper_dose"
    t.string   "bedtime_dose"
    t.string   "reason"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "strength"
    t.string   "method_of_administration"
    t.datetime "discontinued_at"
  end

  create_table "patients", :force => true do |t|
    t.string   "emr_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "date_of_birth"
    t.string   "phone_number"
    t.string   "family_doctor_cpso"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
