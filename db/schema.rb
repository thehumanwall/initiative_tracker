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

ActiveRecord::Schema[8.0].define(version: 2025_01_15_214106) do
  create_table "initiative_items", force: :cascade do |t|
    t.string "name"
    t.integer "initiative_id", null: false
    t.integer "status_id"
    t.integer "priority_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["initiative_id"], name: "index_initiative_items_on_initiative_id"
    t.index ["priority_id"], name: "index_initiative_items_on_priority_id"
    t.index ["status_id"], name: "index_initiative_items_on_status_id"
  end

  create_table "initiatives", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "priorities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scales", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "value"
    t.string "color_code"
    t.integer "team_group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_group_id"], name: "index_teams_on_team_group_id"
  end

  add_foreign_key "initiative_items", "initiatives"
  add_foreign_key "teams", "team_groups"
end
