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

ActiveRecord::Schema.define(version: 6) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "casting_directors", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.bigint "model_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["model_id"], name: "index_jobs_on_model_id"
    t.index ["project_id"], name: "index_jobs_on_project_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "agency"
    t.string "image"
    t.integer "ranking"
    t.integer "shows_walked"
    t.integer "insta_followers"
    t.integer "height"
    t.string "special_skills"
    t.string "city"
    t.integer "fee"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "city"
    t.integer "budget"
    t.bigint "casting_director_id", null: false
    t.string "date"
    t.string "agency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["casting_director_id"], name: "index_projects_on_casting_director_id"
  end

  create_table "questionnaires", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_questionnaires_on_project_id"
    t.index ["question_id"], name: "index_questionnaires_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "text"
    t.string "model_attr"
    t.boolean "pop_up"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "jobs", "models"
  add_foreign_key "jobs", "projects"
  add_foreign_key "projects", "casting_directors"
  add_foreign_key "questionnaires", "projects"
  add_foreign_key "questionnaires", "questions"
end
