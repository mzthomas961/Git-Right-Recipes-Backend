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

ActiveRecord::Schema.define(version: 2021_03_25_192026) do

  create_table "diets", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "preferences", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "diet_id", null: false
    t.string "restriction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["diet_id"], name: "index_preferences_on_diet_id"
    t.index ["user_id"], name: "index_preferences_on_user_id"
  end

  create_table "recipe_diets", force: :cascade do |t|
    t.integer "recipe_id", null: false
    t.integer "diet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["diet_id"], name: "index_recipe_diets_on_diet_id"
    t.index ["recipe_id"], name: "index_recipe_diets_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "ingredients"
    t.string "instructions"
    t.boolean "breakfast"
    t.boolean "lunch"
    t.boolean "dinner"
    t.boolean "snack"
    t.boolean "dessert"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "preferences", "diets"
  add_foreign_key "preferences", "users"
  add_foreign_key "recipe_diets", "diets"
  add_foreign_key "recipe_diets", "recipes"
end
