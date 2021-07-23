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

ActiveRecord::Schema.define(version: 2021_07_17_113445) do

  create_table "academic_plans", force: :cascade do |t|
    t.text "academic_plan_note"
    t.integer "advised_term_id"
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["advised_term_id"], name: "index_academic_plans_on_advised_term_id"
    t.index ["student_id"], name: "index_academic_plans_on_student_id"
  end

  create_table "academic_terms", force: :cascade do |t|
    t.string "academic_term"
    t.integer "academic_term_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "advisors", force: :cascade do |t|
    t.string "ugamyid"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_advisors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_advisors_on_reset_password_token", unique: true
  end

  create_table "colleges", force: :cascade do |t|
    t.string "college_code"
    t.text "college_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "course_plans", force: :cascade do |t|
    t.integer "course_id"
    t.integer "academic_plan_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["academic_plan_id"], name: "index_course_plans_on_academic_plan_id"
    t.index ["course_id"], name: "index_course_plans_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_code"
    t.text "course_title"
    t.integer "credit_hrs"
    t.integer "course_term_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_term_id"], name: "index_courses_on_course_term_id"
  end

  create_table "majors", force: :cascade do |t|
    t.string "major_code"
    t.text "major_title"
    t.integer "college_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["college_id"], name: "index_majors_on_college_id"
  end

  create_table "student_rosters", force: :cascade do |t|
    t.integer "advisor_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["advisor_id"], name: "index_student_rosters_on_advisor_id"
    t.index ["student_id"], name: "index_student_rosters_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "ugamyid"
    t.string "preferred_name"
    t.string "last_name"
    t.integer "major_id", null: false
    t.integer "advisor_id", null: false
    t.integer "matriculation_term_id"
    t.integer "graduation_term_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["advisor_id"], name: "index_students_on_advisor_id"
    t.index ["graduation_term_id"], name: "index_students_on_graduation_term_id"
    t.index ["major_id"], name: "index_students_on_major_id"
    t.index ["matriculation_term_id"], name: "index_students_on_matriculation_term_id"
  end

  add_foreign_key "academic_plans", "students"
  add_foreign_key "course_plans", "academic_plans"
  add_foreign_key "course_plans", "courses"
  add_foreign_key "majors", "colleges"
  add_foreign_key "student_rosters", "advisors"
  add_foreign_key "student_rosters", "students"
  add_foreign_key "students", "advisors"
  add_foreign_key "students", "majors"
end
