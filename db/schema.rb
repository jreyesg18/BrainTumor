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

ActiveRecord::Schema.define(version: 2024_06_13_014928) do

  create_table "patients", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "age"
    t.string "gender"
    t.string "tumor_type"
    t.string "tumor_grade"
    t.string "tumor_location"
    t.string "treatment"
    t.string "treatment_outcome"
    t.integer "time_to_recurrence"
    t.string "recurrence_site"
    t.integer "survival_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
