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

ActiveRecord::Schema.define(version: 2020_05_07_233310) do

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.decimal "quantity"
    t.integer "measure"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_has_materials", force: :cascade do |t|
    t.integer "material_id_id"
    t.integer "recipe_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id_id"], name: "index_recipe_has_materials_on_material_id_id"
    t.index ["recipe_id_id"], name: "index_recipe_has_materials_on_recipe_id_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "instructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
