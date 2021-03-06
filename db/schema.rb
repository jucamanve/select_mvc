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

ActiveRecord::Schema.define(version: 20180313165433) do

  create_table "checks", force: :cascade do |t|
    t.boolean "status"
    t.integer "profile_id"
    t.integer "requirement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_checks_on_profile_id"
    t.index ["requirement_id"], name: "index_checks_on_requirement_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "username"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles_skills", id: false, force: :cascade do |t|
    t.integer "profile_id", null: false
    t.integer "skill_id", null: false
  end

  create_table "requirements", force: :cascade do |t|
    t.string "name"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_requirements_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
